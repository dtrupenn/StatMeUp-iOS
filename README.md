# StatMeUp-iOS Proposal

Programmer: Dan Trujillo (SEAS Username: dtru)

Support Members: Debbie Yiu (Nurse for Medical Data) and Jenny Wang
(Nurse for Medical Data)

### Overview

This project is meant to be an extension of the working web
application for the Oncology Department at the University of
Pennsylvania, Oncolink. It is an application meant to solve the issue
of patients lacking the understanding of their illness and their own
diagnostic information as it becomes increasingly technical and lack
enough one on one care with their primary physician. StatMeUp
is meant to assist patients in understanding and managing their health
and promote patient involvement in medical treatment and care.

As stated before the objective of this application is to facilitate
the use of this application by porting it to a user's iOS device. As
the use of mobile applications increases it is important for
web applications like statmeup to provide a companion
application. This iOS version will provide the same features provided
in the current webapp, mainly the piazza like forum for patients and
medical professionals to ask questions and the graphic visualization
of the data provided from the application.

### Pitch

This app is meant to be an extension of the statmeup webapp that
enables patients to be more involved in their own care and facilitates
the process of tracking their progress. While also providing patients
information to understand the implicatins of their vital signs, lab
results and medications through our forum of medical professionals.

### Technical Challenges

The technical challenges faced with this project are mainly related to
connecting to a functional web app's server and making asynchronous
calls to view and update data for the application. Main technical
challenges included in this project involve creating a RESTful API for
the webapp for user authentication and data manipulation. This would
be challenging because it would require implementation of the loading
spinner, build queries that will be recognized by the Rails webapp,
also implementation of some sort of data token so that the user does
not have to sign in multiple times. Another technical challenging
portion is providing a proper visualization of the input data. This
will require the usage of graphing framework for iOS including core-plot or
other similar frameworks that provide similar or better functionality.

### Milestones

- Create a simple iOS design for each view (sign in page, forum page,
  settings page, and data page)

- Connect to site's server data using RESTful API.

- Populate views based on data recieved from server.

- Be able to push data to site server and update information.
  
- Implement searches and other useful queries for data insertion and manipulation.

- Provide good data visualization for patient data (if possible),
  using core-plot or similar iOS graphing frameworks.

- TestingTestingTesting
