# BusBooking-ASP.NET-app
A web application built using ASP.NET and ADO.NET for searching and booking buses. Customers can search, sort and filter as they look for buses and make bookings and cancellations. The administrator can manage the active buses and also view all the bookings.

This project is aimed at developing a bus booking portal that allows users to search and find buses and book tickets in buses that have vacancies available. The web application is developed using ASP.NET and C# and has several web pages with interactive user interface and design for easy access and navigation. The primary purpose of the website is the booking of bus tickets by the customers. The name of the website is called “BusBooking”.

The functionalities offered are based on the type of user that is accessing the webpage. There are two different type of users that can access this website –
Customer/User
Administrator

An administrator is provided with a special username and password for login. When an administrator logs in successfully after proper verification, he can maintain the details of all the buses that are currently going on different routes. He is provided with a page that allows him to add routes/buses, edit existing buses and delete buses that are actively functioning as of now. He can also view all the bookings that have taken place and are confirmed.

The customer on the other hand, has to sign up and make an account. After logging in with that account, the customer can get information regarding the buses he/she is interested in. One can search, sort and filter based on company of the bus, the date, time of arrival/departure, source location and destination location. The customer can then go ahead and make a booking for a specific number of seats if he/she is willing to make a purchase. Finally, the booking is confirmed and visible to the administrator. Customers can also view all the bookings that they have done till date by looking at the past trips page. They can also cancel bookings from here. Thus, the customer can search, sort, filter and view bus information, make bookings and also view and cancel prior bookings.


The application was successfully developed with 6 different web pages having the functionalities as mentioned below –

MainPage.aspx : Provides features for sign up for new customers, login for customer and administrators
Book.aspx : Customers can search, sort and filter buses here, and make bookings
Confirm.aspx : Final confirmation of a successful or failed booking is given here
PastTrips.aspx : A customer can view past bookings and make cancellations
Admin_bus.aspx : Administrator can add new buses, edit and delete buses here
Admin_booking.aspx : Administrator can view all the bookings made by all customers here


This project makes heavy use of several important concepts and topics in web development and internet technologies such as web controls, ASP.NET controls and properties, validation controls, themes, stylesheets, master and content pages, cookies, session and application states, query string and gridview. Multiple techniques are used for data binding and persistence storage. Cookies are used to remember users that logged in and autofill the username and details, Session is used to track current user as he makes bookings or views past bookings, and QueryString is used to pass bus details while confirming the final booking.

Apart from these concepts of web design and development, database management in web applications was implemented with SQL backend database having multiple tables for Users, Buses and Bookings. The connections were made through ADO.NET, involving both direct and disconnected data access. The SQLDataSource control was used extensively for binding data to gridviews and tables, and several properties of gridview were explored as we worked on implementation of edit/update, delete and addition of data directly using the gridview. All CRUD operations were performed. The number of seats available in a bus after bookings and cancellations was also taken care of through database update commands. Searching, sorting and filter on the gridview were performed using special properties offered by the Gridview control in ASP.NET.  The importance and convenience that Visual Studio provides in web development was also noted. 

This project provided us with the opportunity to utilize our knowledge and skills we have developed in the domain of internet technologies, and create a real-world application that required a wholistic and complete understanding of multiple concepts and linked these concepts together to provide enhanced functionalities.
