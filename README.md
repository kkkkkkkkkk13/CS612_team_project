
# **Boba Tea Web Ordering System**
## **Team Member**
| Name                     | Email                  |
|--------------------------|------------------------|
| Linlan Cai               | lc03159p@pace.edu      |
| Krits Chotechuangchaikul | kc98629n@pace.edu      |
| Jingsi Hu                | jh42221n@pace.edu      |


## **Overview**
This guide provides step-by-step instructions to set up and run a web-based system that enables users to order Boba Tea online. It includes functionalities for both customers and administrators. The project uses HTML, CSS, JavaScript, Ajax for the frontend, and Node.js, Express, MySQL, and various other libraries for the backend. 

## **Functionalities**

### **Customers**
- **Menu Display:** Various flavors, toppings, and sizes of Boba Tea.
- **Customization:** Personalize orders with choices of flavor, sweetness, ice level, and toppings.
- **Shopping Cart:** Add multiple items.
- **Order Placement:** Options for pickup or delivery.
- **Payment Integration:** Secure online transactions.

### **Administrators/Cashier**
- **Admin Dashboard:** Manage menu items, orders, and website content.

## **Technologies**

### **Frontend**
- **Languages:** HTML, CSS, JavaScript
- **Frameworks:** Ajax

### **Backend**
- **Environment:** Node.js
- **Framework:** Express 
- **Database:** MySQL

### **Authentication**
- The backend implements a secure user authentication system using bcrypt for password hashing.
- It verifies user credentials during login and issues JSON Web Tokens (JWT) for session management.

### **Payment Gateway**
- For payments, the backend includes a route for submitting payment details, including credit card information.
- The system handle and store payment information internally in the database.

## **Documentation**
Instructions for setting up the project locally, including database configuration.

This guide is a general overview For MySQL configuration:

1. **Start MySQL Server**: Open the Terminal and start the MySQL server using the command:
   ```
   mysql.server start
   ```

2. **Access MySQL**: Log in to the MySQL server. The default command is:
   ```
   mysql -u root -p
   ```
   Enter your password when prompted.

3. **Create Database**: Create a new database for your project. Replace `your_database_name` with the desired name:
   ```
   CREATE DATABASE bobaDB;
   ```

4. **Select Database**: Select the database from the folder:
   ```
   USE bobaDB;
   ```

5. **Import SQL Files**: Import the SQL files (`customer_info.sql`, `menu_info.sql`, etc.) into the database. For each file, use:
   ```
   SOURCE path_to_your_file.sql;
   ```
   Replace `path_to_your_file.sql` with the actual file path on your system.

6. **Verify Data**: Check if the tables are created and populated with data:
   ```
   SHOW TABLES;
   SELECT * FROM table_name;
   ```
   Replace `table_name` with the name of the tables to view their data.


## **Presentation**
Showcase the system's features, perform a live demo, and explain the integration of frontend, backend, and database.
- [Project Code](https://github.com/lialazyoaf/CS612_team_project)
- [Demo Video]()
- [Slides]())
## **Due Date**
- Website Codes & Databases, Documentation Due: **11:59pm ET Friday, December 9**
- Peer Review Due: **9:00am ET Saturday, December 16**
