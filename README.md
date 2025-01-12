# Hotel Management Database Schema

This document describes the database schema for a hotel management system. The schema is designed to facilitate the management of hotel data including rooms, employees, and categorization.

## Database Tables

### 1. Hotel Table

- **Hotel_Id** (Primary Key): Unique identifier for each hotel
- **Hotel_name**: Name of the hotel
- **Type_Id** (Foreign Key): References the Type table to specify hotel type

### 2. Type Table

- **Type_Id** (Primary Key): Unique identifier for hotel types
- **Type_Name**: Name/description of the hotel type

### 3. Room Table

- **Room_Id** (Primary Key): Unique identifier for each room
- **Floor**: Floor number where the room is located
- **Hotel_Id** (Foreign Key): References the Hotel table
- **Category_Id** (Foreign Key): References the Category table

### 4. Category Table

- **Category_Id** (Primary Key): Unique identifier for room categories
- **Category_Name**: Name of the room category
- **Price**: Price for the room category
- **Beds_numbers**: Number of beds in the room

### 5. Employee Table

- **Employee_Id** (Primary Key): Unique identifier for each employee
- **Employee_Name**: Name of the employee
- **Employee_Speciality**: Employee's specialization/role
- **Hotel_Id** (Foreign Key): References the Hotel where employee works
- **Leader_Id** (Foreign Key): Self-referencing key to indicate employee's supervisor

## Relationships

1. **Hotel - Type** (1:N)

   - Each hotel has one type
   - A type can be associated with multiple hotels

2. **Hotel - Room** (1:N)

   - A hotel can have multiple rooms
   - Each room belongs to one hotel

3. **Room - Category** (N:1)

   - Each room belongs to one category
   - A category can have multiple rooms

4. **Hotel - Employee** (1:N)

   - A hotel can have multiple employees
   - Each employee works at one hotel

5. **Employee - Employee** (N:1)
   - An employee can lead multiple employees
   - Each employee has at most one leader
