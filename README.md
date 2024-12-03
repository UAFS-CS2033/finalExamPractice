## Final Exam Practice: MVC Web Application with Authentication

#### Objective
Create a simple web application using the **Model-View-Controller (MVC) pattern**. The application will provide a single-page view of purchase order information retrieved from a MySQL database and a form to add new purchase orders to the database. Access to this page requires programmatic user authentication. The exam assesses your understanding of MVC architecture, MySQL database interaction, and web programming.

---

### Instructions

1. **Database Setup**: 
   Run the following command to create the companyDB and populate with data.
   ```
   sudo mysql < company.sql
   ```

2. **Model**:
   Implement and test the PHP files, **Order.php**, and **OrderDAO.php** to implement the model(s) to retrieve all orders from the database table and add an order to the database table..

   Implement and test the PHP files, **User.php**, and **UserDAO.php** to implement the model(s) to authenticate users from the database table.

3. **View**:  
   Implement and test the PHP file, **ordersHome.php** that displays all the orders in a table format. Each row should display the information for all of the fields in the purchase orders table. This page will also display a form for adding new orders to the database. Use *Bootstrap* to format the table, form, and page.
   
4. **Controller**:  
   Implement and test the PHP file, **orderController.php** that functions as the controller for the application and is the target for all HTTP requests.  Access to this page requires user authentication. User should not be able to access the page without providing a valid user/password combination. The following request url should display the page with the dog information:
   ```
   http://localhost/exam2/dogController.php?action=list
   ```  
<img src="dogs.png" alt="dogs">

---

5. **Application Structure**:  
   - Follow the directory structure below:  
     ```
     /company
     ├── orderController.php
     ├── company.sql
     ├── /model
     │   └── User.php
     │   └── UserDAO.php
     │   └── Order.php
     │   └── OrderDAO.php
     ├── /views
     │   └── ordersHome.php
     │   └── login.php
   
     ```


