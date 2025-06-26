# 🏥 Patient Waitlist Monitoring Dashboard

This project is a complete interactive dashboard built using **Power BI**, **MySQL**, and **Python** to track and analyze patient waitlists in a clinical or hospital setting.

---

## 📊 Project Overview

The dashboard allows medical or administrative staff to:
- Monitor total patients currently on the waitlist
- Analyze average and maximum wait times
- Prioritize patients based on urgency level
- Track wait times by department
- View appointment statuses (`Scheduled`, `Pending`)
- Hover over charts to see custom patient details (tooltip)

---

## 🔧 Tools & Technologies
- [x] **Power BI Desktop** for data visualization
- [x] **MySQL** for data storage and joins
- [x] **Python (pandas + sqlite/sqlalchemy)** for preprocessing
- [x] **DAX** for calculated fields like `wait_days`

---

## 🧠 Key Features

| Feature                       | Description                                             |
|------------------------------|---------------------------------------------------------|
| 🚥 Urgency Filtering         | Filter by urgency level using slicers                   |
| 📈 Avg Wait Chart            | Bar chart of average wait days by department            |
| 🧾 KPI Cards                 | Total patients, average urgency, max wait               |
| 📋 Table View                | See detailed patient data with conditional formatting   |
| 🧩 Custom Tooltip Page       | Hovering reveals patient name, age, urgency, wait days  |
| 📅 Line Chart Trend          | Wait time by request date/day for trend analysis        |

---

## 📁 Project Files

| File                            | Description                                |
|---------------------------------|--------------------------------------------|
| `Patient_Waitlist_Dashboard.pbix` | Main Power BI file                         |
| `waitlist_dashboard_data.csv`    | Dataset exported from MySQL using Python   |
| `README.md`                      | Project description and usage instructions |
| `/screenshots/` (optional)       | Image previews of dashboard components     |

---

## 🚀 How to Use

1. Clone this repository  
2. Open `Patient_Waitlist_Dashboard.pbix` in Power BI Desktop  
3. Modify or replace the data source if needed  
4. Interact with filters, tooltips, and visuals

---


## 🧑‍💻 Author

**Kanva Trivedi**  
Built as a showcase project for analytics and BI roles.  
Feel free to fork or contribute!

---

## 📄 License

This project is licensed under the **MIT License**.  
You are free to use, modify, and share with attribution.
