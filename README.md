# Travel-Reservation-System
MySQL database managed in JSP, served by Apache (created for CS336)

The goal of this project was to create a database and website that allows the user to create an account, book flights, place themselves on a waitlist, remove themselves from a waitlist and view current flights. The site also features admin and customer representative abilities which give elevated privilege and allow for modifications of the database, including canceling flights, adding airports, adding airplanes and more.

[Video Featuring All Features of the Project](https://drive.google.com/file/d/1tCNIv0OSV_TU2gjSlar0YlXcMogr8-xe/view?usp=sharing)

This was a group project

***All code written by me is located in mainPage.jsp, cusrepPage (folder) and mainPage (folder)***\
This includes functionality for:
- Searching the database for flights
- Combining several flights to create round trip and multi-legged (non-direct) flights
- Booking flights and assigning them to a ticket and user, or waitlisting the user if the flight is full
- Alerting a user if a waitlisted ticket is avalable to purchase and allowing them to purchase it from the main menu (my favorite feature)
- Canceling previously purchased tickets

## Elevated Credentials
Admin Credentials:
	- ID: admin
	- Password: password

Customer Representative Credentials:
	- ID: cusrep
	- Password: password

## Requirements
- Latest version of mySQL server
- Latest version of JDK (not necessary but recommended)

### Recommendations
- Use windows based machine for best results, the latest server version of Eclipse Server has issues communicating with apache, the current workaround is to install an older version of Eclipse Server

## IMPORTANT information:
This project uses array lists, which requires the use of the ‘<‘ and ‘>’ symbol. This can cause issues in eclipse, which can be fixed by changing the eclipse preferences.

### How to fix:
- Click on your project, click on properties, select java compiler
- In the java compiler section, the Compiler Compliance level should be set to at least 1.7 (When changing the compliance level, make sure you have a compatible JRE installed and activated).

Please follow both [Rutgers University's Principles of Academic Integrity](http://academicintegrity.rutgers.edu/) and the [Rutgers Department of Computer Science's Academic Integrity Policy](https://www.cs.rutgers.edu/academics/undergraduate/academic-integrity-policy)


