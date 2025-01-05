# InventoryManagement
This is a Flask-based web application for managing inventory, suppliers, and transactions. The system includes user authentication and role-based access control (RBAC) to ensure secure access for administrators and regular users.

Features

User Authentication: Secure login with hashed passwords.
Role-Based Access Control (RBAC):

Admin:
Add, edit, and delete products, suppliers, and transactions.
Manage users (add and delete users with admin or user roles).

User:
View products, suppliers, and transactions.

CRUD Operations:
Products: Add, edit, delete, and view products.
Suppliers: Manage supplier information.
Transactions: Record stock additions and removals.

Secure Database Operations:
Prevents SQL injection through parameterized queries.
Implements cascading deletes for dependent records.


Technologies Used

Backend:
Flask (Python web framework)
Flask-Login (User authentication)
Flask-SQLAlchemy (Database ORM)
Flask-Bcrypt (Password hashing)

Frontend:
HTML
CSS (Custom styling)

Database:
MySQL

Deployment:
Localhost (development)

Installation

1. Ensure Python and MySQL Are Added to PATH
For Python:
When installing Python, ensure that the option "Add Python to PATH" is selected during installation. If already installed:
Open Environment Variables in Windows.
Add the directory containing python.exe (e.g., C:\Python39) to the PATH variable.


For MySQL:
Add the directory containing mysql.exe (e.g., C:\Program Files\MySQL\MySQL Server 8.0\bin) to the PATH variable.

2. Clone the Repository
Clone the repository to your local machine:
git clone https://github.com/SyedThahir/InventoryManagement.git
cd InventoryManagement

3. Set Up the Virtual Environment
Windows:
python -m venv venv
venv\Scripts\activate

macOS/Linux:
python3 -m venv venv
source venv/bin/activate

4. Install Dependencies
Install the required Python packages:
pip install -r requirements.txt

5. Configure the Database
1. Create a MySQL database named inventory_db. :
mysql -u root -p
CREATE DATABASE inventory_db;
EXIT;

2. Import the database schema using the provided backup file:
   mysql -u root -p inventory_db < inventory_db.sql

5. Run the Application
   python app.py



