# **🏥 Hospital Management System:**  

A **comprehensive web-based Hospital Management System** (HMS) designed to streamline hospital operations, patient management, and prescription tracking. This system enables efficient management of patient records, doctor prescriptions, and user authentication.  

Developed using **HTML, CSS, PHP, JavaScript, and MySQL**, this project aims to digitize hospital workflows for enhanced efficiency and accuracy.  



## **📌 Key Features**  

### **🔑 User Authentication**  
- Secure **registration, login, and logout** functionalities.  
- Role-based access control (for **admin, doctors, and staff**).  

### **📝 Patient Management**  
- Add new patients with essential medical details.  
- View and manage **patient records**.  
- Update patient information securely.  

### **💊 Prescription Management**  
- Doctors can assign **prescriptions** to patients.  
- View a patient's **prescription history**.  

### **📊 Dashboard & UI**  
- **User-friendly and responsive interface** for easy navigation.  
- Clean, modern **UI/UX** for seamless experience across devices.  

### **🔍 Search & Filter**  
- Quick **search and filtering** for patients and prescriptions.  

### **🛡️ Data Security & Integrity**  
- **Sanitized database queries** to prevent SQL injection.  
- **Secure authentication mechanisms** for data protection.  



## **🛠️ Technologies Used**  

| **Technology**  | **Usage**  |
|----------------|------------|
| **HTML & CSS** | Frontend design & responsiveness |
| **JavaScript** | Interactive elements & form validation |
| **PHP** | Backend processing & server-side logic |
| **MySQL** | Database for storing patient and prescription data |
| **Bootstrap** | UI styling and responsiveness |



## **📂 Installation & Setup**  

### **1️⃣ Clone the Repository**  
First, clone the repository to your local system:  
```bash
git clone https://github.com/MuhammadAsimKundi/HMS.git
cd HMS
```

### **2️⃣ Configure Database**  
1. **Open MySQL** (via phpMyAdmin or CLI).  
2. Create a new database:  
   ```sql
   CREATE DATABASE hospital_db;
   ```
3. Import the provided `hospital_db.sql` file into your database.  
4. Configure database connection in `config.php`:  
   ```php
   $servername = "localhost";
   $username = "your_db_username";
   $password = "your_db_password";
   $dbname = "hospital_db";
   ```

### **3️⃣ Start the Server**  
If using **XAMPP**:  
- Move the project folder to `htdocs`.  
- Start **Apache** and **MySQL** in the XAMPP control panel.  
- Open the browser and go to:  
  ```
  http://localhost/HMS
  ```

If using **PHP’s built-in server**:  
```bash
php -S localhost:8000
```
Then visit `http://localhost:8000` in your browser.


## **📸 Screenshots**  
*(All Relevant UI screenshots will be attached here later to showcase the project.)*  


## **🔗 Live Demo**  
*(live demo link will be deployed later.)*  



## **📜 License**  
This project is licensed under the **MIT License** – you are free to use, modify, and distribute it.  


## **👨‍💻 About the Developer**  

**Muhammad Asim Kundi**  
📍 Islamabad, Pakistan  
✉️ [muhammadasimkundi@gmail.com](mailto:muhammadasimkundi@gmail.com)  
🌐 [GitHub](https://github.com/MuhammadAsimKundi)  

If you have any questions or suggestions, feel free to reach out!  


