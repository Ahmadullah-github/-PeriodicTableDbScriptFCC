# Periodic Table Database  

This project is a Bash script that queries a PostgreSQL database to retrieve information about chemical elements based on atomic number, symbol, or name. It is part of freeCodeCamp's Relational Database Certification.  

## 🚀 Features  
- Retrieves element details such as atomic number, symbol, name, type, atomic mass, melting point, and boiling point.  
- Accepts an element as an argument (atomic number, symbol, or name).  
- Outputs structured information in a user-friendly format.  
- Handles cases where the element is not found in the database.  

## 📜 Requirements  
- PostgreSQL installed and running  
- Bash (Linux/macOS or WSL for Windows)  

## 🛠️ Setup & Usage  
1. Clone this repository:  
   ```bash  
   git clone https://github.com/YOUR-USERNAME/periodic-table-database.git  
   cd periodic-table-database  
   ```  
2. Make the script executable:  
   ```bash  
   chmod +x element.sh  
   ```  
3. Run the script with an element argument:  
   ```bash  
   ./element.sh hydrogen  
   ./element.sh H  
   ./element.sh 1  
   ```  
4. If the element is found, the script outputs details like this:  
   ```  
   The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.  
   ```  
5. If the element is not found, it displays:  
   ```  
   I could not find that element in the database.  
   ```  

## 🗄️ Database Schema  
The PostgreSQL database contains three tables:  
- `elements` (atomic_number, symbol, name)  
- `properties` (atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id)  
- `types` (type_id, type)  

## 🏆 Submission to freeCodeCamp  
After ensuring your repository contains:  
✅ `element.sh` (your script)  
✅ `periodic_table.sql` (your database dump)  
✅ `README.md` (this file)  

Submit your repository link on the freeCodeCamp platform.  

## 📜 License  
This project is for educational purposes under the [MIT License](LICENSE).  

---

Happy coding! 🚀
