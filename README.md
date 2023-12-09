
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

### **1. MySQL Configuration**

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

5. **Import SQL Files**: Import the SQL files (`credit_card.sql`,`order_record.sql`,`transaction_summary`,`customer_info.sql`, `menu_info.sql`, `store_info.sql`) into the database. For each file, use:
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
   
### **2. Front End Configuration**
1. **Install http-server (if not already installed)**:
   
   If you haven't already installed `http-server`, you can do so by running the following command:

   ```bash
   sudo npm install -g http-server
   ```

   Example:

   ```bash
   (base) ryuu@Krits-MP ~ % sudo npm install -g http-server
   ```

2. **Navigate to the Project Directory**:

   Use the `cd` command to navigate to the front-end directory of your project. Replace `path/to/your/project` with the actual path to your project's front-end directory:

   ```bash
   cd path/to/your/project
   ```

   Example:

   ```bash
   (base) ryuu@Krits-MP ~ % cd /Users/ryuu/Downloads/CS612_team_project-main
   ```

3. **Start http-server**:

   Run the following command to start the `http-server` in the front-end directory:

   ```bash
   http-server
   ```

   Example:

   ```bash
   (base) ryuu@Krits-MP CS612_team_project-main % http-server
   ```

4. **Access the Website**:

   After starting the `http-server`, you can access the front-end of the website by opening your web browser and navigating to the following address:

   ```
   http://localhost:8080
   ```

5. **Go to Boba-front end part**:

   Click on the "Boba-front end part" link or button to access the front-end of the website we've created.
   
### **3. Back End Configuration**

## **Presentation**
Showcase the system's features, perform a live demo, and explain the integration of frontend, backend, and database.
- [Project Code](https://github.com/lialazyoaf/CS612_team_project)
- [Demo Video](https://github.com/lialazyoaf/CS612_team_project/blob/main/WhatsApp%20Video%202023-12-09%20at%2012.09.19%20AM.mp4)
- [Slides]()
## **Due Date**
- Website Codes & Databases, Documentation Due: **11:59pm ET Friday, December 9**
- Peer Review Due: **9:00am ET Saturday, December 16**
