Library Management System
This project is flutter based mobile application developed using Visual Studio Code that can be used by users/admin to perform various Library related operations such as searching books, seeing books issued to the user, re-issuing books, adding/removing/updating books, collecting fines, etc. The App uses Google Firebase Cloud Firestore as the back-end database for storing details of books and users. Cloud Messaging is used to send notifications to users if a return deadline is approaching/fine is increased and when a new book is added to the Library by an admin. Cloud Functions are used to monitor the database and update fines, trigger notifications. The App has a user-friendly and interactive interface.

Tools Used
  Visual Studio Code : Used as the developement environment.
  Cloud Firestore : Used as the backend database.
  Cloud Functions : Used to deploy cloud scripts automatically triggered by Firebase features and HTTPS requests.
  Firebase Cloud Messaging : Used for sending push notifications.

