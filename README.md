# BeKindToYourself-DB

A relational database prototype designed for a therapy centre, as part of a university project.  
The system models clients, staff, therapies, appointments, equipment, and messages, with support for reporting and automation.

## Features
- **Database schema**: Normalised tables with PK/FK relationships and junction tables for many-to-many mappings.  
- **Sample data**: Seeded dataset including clients, staff, therapies, qualifications, and appointments.  
- **Queries & views**:
  - Centre performance (revenue, appointments, averages)
  - Therapies offered per centre with staff specialists
  - Top clients with appointment counts  
- **Trigger**: Automatic appointment confirmation messages inserted into the `message` table when a new appointment is created.  

## Tech
- SQL Server (T-SQL)
- SQL Server Management Studio (SSMS)

## Getting Started
1. Run `create_tables.sql` to create the schema.  
2. Run `insert_data.sql` to seed the database.  
3. Optionally run `views_and_queries.sql` for reporting.  
4. Trigger `after_appointment_insert` will automatically generate messages when new appointments are inserted.

## Example Output
Example: top clients by number of appointments.  
| clientID | clientName      | clientCity  | contactNumber | email            | Number_Of_Appointments |
|----------|-----------------|-------------|---------------|------------------|-------------------------|
| 1        | Joshua Pilcher  | Hervey Bay  | 0417 893 190  | josh98@123.com   | 3                       |
| 3        | Liam Johnson    | South Yarra | 0423 456 789  | liam19@xyz.com   | 2                       |

## License
This project is licensed under the MIT License.
