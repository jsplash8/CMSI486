### HW #2
### Authors: Joshua Patterson & Alex Richardson
### Due Date: October 23, 2019

### Ch 9, #3: Try to map the relational schema in Figure 6.14 [page 189] into an ER schema. This is part of a process known as reverse engineering, in which a conceptual schema is created for an existing implemented database. State any assumptions you make.

![ER](image/IMG_8045.jpg)

 
### Ch 9, #7: Is it possible to successfully map a binary M:N relationship type without requiring a new relation? Why or why not?
It is not possible to successfully map a binary M:N relationship without requiring a new relation, due to the cardinality ratio of M:N. For example, attributes within M:N relationship types are determined by a combination of participating entities, rather than a single one. There must exist a foreign key for each entity and relation in order to map this relationship.
(Elmarsi 218)


## Problems From Elmasri Chapter 10
### Ch 10, #3: Why is it important to design the schemas and applications in parallel?
It is important to design the schemas and applications in parallel due to applications being specified by the database schema constructs such as the Conceptual Schema design, Logical Schema and view design, and Internal Schema design. Along with this reference, the two activities are able to work hand and hand with each other by identifying data that will be stored in the database along with the physical database design phase, which is dependent on the applications that uses its file for querying and updating. 
(Elmarsi 310).	

### Ch 10, #4: Why is it important to use an implementation-independent data model during conceptual schema design? What models are used in current design tools? Why?
It is important to use an implementation-independent data model during the conceptual schema design because data models such as DBMS, that are used in current design tools, typically have idiosyncrasies and restrictions that should not be allowed to influence the conceptual schema design. The goal of conceptual schema design is a complete understanding of the database structure, meaning (semantics), interrelationships, and constraints.		
(Elmarsi 313-314)

### Ch 10, #6: Consider an actual application of a database system of interest. [NOTE: this means pick one you are familiar with to use for this exercise.] Define the requirements of the different levels of users in terms of data needed, types of queries, and transactions to be processed.
A database system of interest for us would be one that holds data for music used within our Generative Adversarial Network. The data managed within this database holds information for genre, sub-genre, bpm, and key. These would typically be strings in a table that organizes each generated song by its corresponding genre, sub-genre, bpm and key. The SQL Select statement query would allow us to grab individual information from each song and manage it. Informational search queries along with SQL Like operators would also be used to find corresponding keys, bpms, genres and subgenres, along with finding patterns between songs that share the same values in the table. Transactions such as searching up, fetching song information by specific categories would be used in this database system.
 
## Problems From Elmasri Chapter 15
### Ch 15, #5: What is a functional dependency? What are the possible sources of the information that defines the functional dependencies that hold among the attributes of a relation schema?
A functional dependency is a constraint between two sets of attributes, defined as X → Y, where X and Y are sets of attributes that are both subsets of R, which is specified as a constraint on possible tuples. The X set of attributes determines Y in the relationship schema, only when two tuples  of relation state r of R agree on the X value. Along with this, they must agree on the Y Value. It is also a property of the semantics, meaning that those who design databases and schemas will use their understanding of the attributes to specify these functional dependencies. 
(Elmarsi 514)

### Ch 15, #9: What undesirable dependencies are avoided when a relation is in 2NF?
When a relation is in 2NF, nonprime attributes are associated only with the part of the primary key on which they are fully functionally dependent. Undesirable dependencies such as partial dependencies are avoided in 2NF, meaning everything in the relation is full functional dependent. Redundant data is lost as attributes are able to identify each other.
(Elmarsi 523)

### Ch 15, #10: What undesirable dependencies are avoided when a relation is in 3NF?
When a relation is in 3NF, undesirable dependencies such as problematic FDs are avoided through decomposing the original relation into new relations. Relations are first tested in 2NF before 3NF historically, meaning that partial dependencies and redundant data are also avoided through this normal form.
(Elmarsi 524)

### Ch 15, #13: What is a multivalued dependencey? When does it arise?
A multivalued dependency is a product of 1NF, where it rejects an attribute in a tuple to have a set of values, and contributes to the process of converting a relation that is unnormalized into 1NF. 
(Elmarsi 531)

## Problems From Elmasri Chapter 21
### Ch 21, #1: What is meant by the concurrent execution of database transactions in a multiuser system? Dicscuss why concurrency control is needed, and give informal examples.
Concurrent execution of database transactions means that many transactions could be done simultaneously within the database. In a Multiuser system, many users are active within the system and database, allowing them to complete transactions concurrently during this process. Concurrency control within multiuser DBMs is needed due many users needing to manage and access data within the same database through the process of multiprogramming. Examples such as banks that manage stocks, insurance agencies, markets and airline reservations that have databases that hold information pertaining to hundreds of agents and clerks must use concurrency control in order for multiple users to be able to access data within the DBMs and operate within database to submit transactions simultaneously without fault.
(Elmarsi 773)

### Ch 21, #6: Discuss the atomicity, durability, isolation, and consistency preservations properties of a database transaction.
Atomicity means that the transaction is an atomic unit, meaning that it should be performed wholly not at all. Durability defines that the changes done to a database by a transaction must remain and persist within the database. The changes cannot be lost because of failure. Isolation denotes that a transaction should be executed on its one, isolated from other transactions. Although many transactions are executing concurrently, this still must be done and not be interfered by any other transactions being executed concurrently. Consistency preservations define a transaction that should be should be consistency preserving. If it is executed wholly without interference from other transactions being executed concurrently, it takes the database from one consistent state to another.		
(Elmarsi 754-755)
 
## Problems From Van Bruggen Chapter 4
### Ch 4, #1: The four fundamental data constructs of Neo4j are [select one and describe each of the items in your selection]:

Node, relationship, property, and label

Nodes stores entity information within its model. For a car dealership model, the nodes would contain entities such as Car, Customer, Dealer. 
 Relationships connect nodes and provides a meaning to the structure of the entities within the model. They are pre-calculated and a join-like operation within DBMs. A relationship within the car dealership model would connect the nodes Car and Customer, due to the customer having a direct relationship to the car they are buying.
Properties are name/value pairs that are contained within nodes and relationships. For the car dealership model, a property would be the type of car, or the name of the customer/dealer.
Labels are given to nodes to further specify them within the model without the need of a relationship. They efficiently create subgraphs that could be accessed quickly without the need to follow node-relationships.
(Van Bruggen 74-75)

### Ch 4, #3: If you have a few entities in your dataset that have lots of relationships to other entities, then you can't use a graph database because of the dense node problem.

2. True – but there is no alternative, so you will have to live with it
(Van Bruggen 75)
