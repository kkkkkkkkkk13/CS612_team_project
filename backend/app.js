const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const cors = require('cors');

const app = express();
const port = 3000;
app.use(cors());

// MySQL connection configuration
const db = mysql.createConnection({
    host: '156.127.99.100', // Database server address
    user: 'along',      // Database username
    password: 'abc123',      // Database password
    database: 'BOBA'   // Database name
});

// Connect to the MySQL database
db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL');
});

// Middleware to parse JSON bodies
app.use(bodyParser.json());

// Start the Express server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});

// Login route using email
app.post('/login', (req, res) => {
    const { Email, password } = req.body; // Use Email from the request body
    // Check if Email and password are provided
    if (!Email || !password) {
        return res.status(400).send('Email and password are required');
    }
    console.log(Email);
    console.log(password);
    // SQL query to find user by Email
    const query = 'SELECT * FROM customer_info WHERE Email = ?';
    // Execute the query
    db.query(query, [Email], async (err, result) => {
        if (err) throw err;
        // Check if user exists and password is correct
        //console.log(result);
        //console.log(await bcrypt.hash('abc123', 10));
        if (result.length === 0 || !await bcrypt.compare(password, result[0].password)) {
            return res.status(401).send('Invalid credentials');
        }

        // Generate a JWT token (if using)
        const token = jwt.sign({ customer_id: result[0].customer_id }, 'yourSecretKey', { expiresIn: '1h' });
        
        // Send success response with token
        res.json({ message: 'Logged in successfully', token });
    });
});

app.post('/submit-order', async (req, res) => {
    const { items, total, email, storeId } = req.body;

    // Find or create the customer ID based on the email
    db.query('SELECT customer_id FROM customer_info WHERE Email = ?', [email], async (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).send('Error processing order');
        }

        let customerId;
        if (result.length > 0) {
            // Customer found, use their ID
            customerId = result[0].customer_id;
        } else {
            // If customer doesn't exist, you might want to create a new customer or handle the error
            return res.status(400).send('Customer not found');
        }

        // Create a transaction record in the transaction_summary table
        db.query('INSERT INTO transaction_summary (order_date, customer_id, order_price, store_id, order_sum) VALUES (?, ?, ?, ?, ?)',
            [new Date(), customerId, total, storeId, JSON.stringify(items)], (err, result) => {
            if (err) {
                console.error(err);
                return res.status(500).send('Error processing transaction');
            }
            const transactionId = result.insertId;

            // Process each item in the order
            items.forEach(item => {
                // Get the menu number based on the item name
                db.query('SELECT menu_number FROM menu_info WHERE name = ?', [item.name], (err, result) => {
                    if (err) {
                        console.error(err);
                        return;
                    }
                    const menuNumber = result[0].menu_number;

                    // Insert the order details into the order_record table
                    db.query('INSERT INTO order_record (transaction_id, menu_number, temperature, sweetness, topping) VALUES (?, ?, ?, ?, ?)',
                        [transactionId, menuNumber, item.temperature, item.sugarLevel, item.toppings], (err, result) => {
                        if (err) {
                            console.error(err);
                        }
                    });
                });
            });
            res.status(200).json({ message: 'Order processed successfully' });
        });
    });
});

app.post('/submit-payment', (req, res) => {
    const {
        cardholder_name,
        card_number,
        expiry_date,
        security_code,
        issuing_bank,
        card_type,
        billing_address,
        city,
        state,
        zip_code,
        country,
        Email
    } = req.body;
    console.log(req.body);
    const expiryParts = expiry_date.split('/');
    const month = expiryParts[0];
    const year = '20' + expiryParts[1];
    const format_expiry_date = `${year}-${month}-01`;
    db.query('SELECT customer_id FROM customer_info WHERE Email = ?', [Email], (err, results) => {
        if (err) {
            console.error('Error finding customer:', err);
            return res.status(500).send('Error processing payment');
        }

        if (results.length === 0) {
            return res.status(400).send('Customer not found');
        }

        const customer_id = results[0].customer_id;
        const insertCardQuery = 'INSERT INTO credit_card (customer_id, cardholder_name, card_number, expiry_date, security_code, issuing_bank, card_type, billing_address, city, state, zip_code, country) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        db.query(insertCardQuery, [customer_id, cardholder_name, card_number, format_expiry_date, security_code, issuing_bank, card_type, billing_address, city, state, zip_code, country], (err, result) => {
            if (err) {
                console.error('Error saving credit card information:', err);
                return res.status(500).send('Error processing payment');
            }

            res.status(200).json({ message: 'Payment successful and card info saved!' });
        });
    });
});

app.get('/order-history/:email', (req, res) => {
    const userEmail = req.params.email;
    db.query('SELECT customer_id FROM customer_info WHERE Email = ?', [userEmail], (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).send('Error fetching customer data');
        }

        if (result.length === 0) {
            return res.status(404).send('Customer not found');
        }

        const customerId = result[0].customer_id;
        const orderHistoryQuery = `
            SELECT ts.transaction_id, ts.order_date, ts.customer_id, ts.order_price, si.store_name, ts.order_sum
            FROM transaction_summary ts
            JOIN store_info si ON ts.store_id = si.store_id
            WHERE ts.customer_id = ?`;

        db.query(orderHistoryQuery, [customerId], (err, orders) => {
            if (err) {
                console.error(err);
                return res.status(500).send('Error fetching order history');
            }

            res.json(orders);
        });
    });
});

