#### Joshua Patterson & Alex Richardson
#### September 18, 2019
#### CMSI 486
#### Homework 1
#### Prof. Johnson

## CHAPTER 1)
#### Ch 1, #13: 
##### Less complex and generally smaller data would be managed best through traditional file processing. This is because smaller programs, operations and applications do not need the intricacies that DBMS offers, such as the access to a multitude of diverse databases through definitions. Using the database approach for smaller data would not benefit nor hinder it, but would rather be a waste of time and resources such as hardware, software, and data security/recover when creating, sorting and managing data sets. Data files that are not expected to change due to program data-independence should be managed under file processing. Examples such as Embedded Systems with limited storage capacity and programs written in C++ using struct and class declarations, where they are only accessing a specific database, would be managed better under file processing to eliminate any extra costs and time. (Elmasri 9, 26)

#### Ch 1, #14: 
##### a) The columns that would need to be updated would be Major, Department, Course_Number, Prerequisite_Number, since they include the characters ‘CS’.

##### b)If Course_Number and Prerequisite_Number could be merged into one Course_Details column, following the format “CSSE#### - ____####”, this would eliminate the need to update both columns, but only one. The department column could also be eliminated since the “CSSE” tag would be redundant data. 

## CHAPTER 2)
#### Ch 2, #3: 
##### A database schema is a description of a database through some sort of design, usually not subject to change. Much like a general state in computing, a database state is the status of the data in real-time, also known as a “snapshot”. The database state also holds the current set of occurrences and instances within the database (Elmarsi 32, 33).

#### Ch 2, #7: 
##### There are multiple user-friendly interfaces that have a multitude of functionalities that allow the user to pick and choose how they wish to navigate through schemas. Menu-Based Interfaces for Web Clients or Browsing allow the user to choose options or menus to navigate through Web-based interfaces. These menus guide the user through creating requests through a series of options, rather than prompting them for a particular language syntax. Users who navigate through mobile devices and apps, ATM or money dispensing programs, music applications, and even online shops would typically use Menu-Based interfaces. (Elmarsi 38). A Forms-Based interface gives a form for the user to input data. These forms are retrieved by the DBMS and usually prompt the user to provide information so that the given program/machine/application knows which functionality to harness. An example of a forms-based interface user would be someone who uses utilities like printers, where they are prompted for page size, color , double sided, etc.. or web applications that ask for personal information through forms for purchases. (Elmarsi 39). GUI’s provide a schema to the user, which is seen as a database diagram in which they can modify it. This interface includes many aspects of other interfaces such as forms and menus to add to the Graphic. A mouse is usually used to specify your selections through the options on the diagram. An example of a user is someone who navigates through web applications that prompt you to select buttons/menus/forms using your mouse or track-pad. (Elmarsi 39). This Interface accepts written information from users in language form and try to interpret them for a functionality. The interface is similar to GUI’s where a schema is also passed the the user, resembling a database diagram. The schema includes a dictionary of definitions, which is called by the interface. If the interface is able to read the information given by the user correctly, a query is sent to the DBMS to be managed. An example a user would be one who uses search engines such as Google and Bing, in which they require the user to input written information, which is verified and responded to using the schema’s dictionary. (Elmarsi 39) Applications with a language that only accepts a limited set would follow the interface of Speech and Output, and users that use telephone systems with only a specific set of numbers would use this. Bank Tellers that constantly go through the same motions during their job would find most use through Interfaces for Parametric Users, where single functions and repeated actions are constantly called. For exclusive access applications that prompt account creation or the ability to change the schema, this would fall under Interfaces for DBA. Users who navigate through social media sites, or any web application that requires a sign-up would use this type of Interface. (Elmarsi 39)

#### Ch 2, #14: 
##### Utilizing the three tiers (client, server-side, and database) would allow making airline reservations and selling airline tickets more efficient through the use of GUI, Web Pages, and Database Management. The GUI will handle the schema, and would allow the user to fill in information to fly in forms and menus. The Web Pages would be beneficial to list information about the airline and tickets. Database Management would organize the information that has been sent through many requests through the schema, menus, and forms. Other architectures that have less than three tiers may not be able to handle the data given by the GUI alone, due to the several amount of interactions the user will have with the database design. (Elmarsi 46)

## CHAPTER 3)
#### Ch 3, #2:
##### A relation schema is made up of domains, attributes, and relations. These relations are defined as a set of tuples, therefore, the set they belong to have no order whatsoever. There are also logical and abstract levels of relations that simply cannot be organized in an order due to the rule of sets. (Elmarsi 68, 69)

#### Ch 3, #5: 
##### The primary key is designated in order to identify the non ordered set of tuples within relations. These primary keys usually have smaller attributes in order to handle the relation schema and its many sets of tuples more precisely. (Elmarsi 69)

### Ch 3, #9:
#### A foreign key references a relation, which will ultimately reference tuples and primary keys of other relations. This is done to provide a link between two data sets in two different relations. (Elmarsi 73)

### Ch 3, #13: 
#### Candidate Keys should include the labels that have similarly unique attributes. Course#, Time_Period, Instructor_Name could be one if the course is taught in the same room and building each year. Room# and Building_code could be used if the same course/instructor teaches in the same room. Course#, Credit_hours, Weekdays, and Semester could be one if the course usually has one professor for these specific weekdays, hours and semester.

### Ch 3, #20 [part c only]: c 
#### The advantages would be because they are artificial, meaning the key could redefine a ternary relationship as an entity type. Making more entity types would allow more keys to fall under similar attributes. The disadvantage of generated keys would be that the keys of the defining classes are different, so we cannot use any one of them exclusively to identify all entities in the category. (Elmarsi 298)
