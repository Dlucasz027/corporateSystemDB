# corporateSystemDB | College Relational Database Project

- Project developed as part of the Relational Database course at UNINTER, focused on designing and implementing a relational database for managing company service orders.  
- The project includes both conceptual modeling (Entity-Relationship Model) and logical implementation (MySQL database), as well as a set of SQL queries for data retrieval and analysis.  
- Designed to reinforce academic understanding of database concepts such as normalization, relationships, constraints, and query construction.  
- Emphasizes clean and structured database design, professional implementation, and practical SQL application.

---

## Project Contents

- Conceptual modeling using Entity-Relationship Model (ERM / MER)  
- Implementation of a relational database in MySQL  
- Definition of entities, attributes, relationships, and constraints (PK / FK / NOT NULL)  
- Modeling of one-to-many (1:N) and many-to-many (N:N) relationships with associative tables  
- Population of tables with realistic sample data for testing  
- Execution of SQL queries for:
  - Total number of services registered  
  - Listing open service orders with details (date, equipment, priority)  
  - Listing services executed per order with subtotal calculation  
  - Calculating total value per service order  

---

## Database Structure

The main entities modeled and implemented include:

- **Project** — Stores project information: ID, name, description, start/end dates, status, and budget.  
- **Employee** — Stores employee information: SSN, name, contact info, address, admission date, role, and salary.  
- **Department** — Contains department data: ID, name, contact info, manager, and budget.  
- **Part** — Records parts used in projects: ID, type, description, registration date, unit cost, and status.  
- **Warehouse** — Manages warehouses: ID, name, contact info, address, capacity, and responsible person.  
- **Supplier** — Tracks suppliers: CNPJ, company name, contact info, address, and delivery lead time.  
- **ServiceOrder** — Manages service orders: links clients, technicians, and services, with dates, equipment, problem description, completion records, and total value.  

---

## Technologies Used

- MySQL / SQL — database creation, table management, and queries  
- Data modeling concepts — ERM / MER, normalization, relationships, constraints  
- Academic focus — study and practice of relational database design  

---

👤 Matheus de Lucas Arouca  
[LinkedIn](https://www.linkedin.com/in/delucas027/)