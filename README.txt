## The sql files here are designed to replicate the work done by Morley et al. 2015 
## The code is Morley's, modified only slightly in order to run on more recent versions of PostGIS

To get this to run in PostGIS you will need:
PostGres
PostGIS
PGAdmin4 

Once set up, open PGAdmin4 and create a database for this project, and a schema for all the tables. The SQL in the following scripts assume the schema is called cnossos, but this can be changed by altering the line at the top of each script (change cnossos to be the name of the schema you create):


For the low resolution script
-----------------------------

From within PGAdmin open and run each of the following sql scripts in order. They all use the public schema and create the users, types, funcions and tables. They then load data into the tables from pre-populated source tables, and finally run the noise model on the data.

01_cnossos_bioshare_set_up_types.sql
02_cnossos_bioshare_set_up_functions.sql
03_cnossos_bioshare_run_analysis.sql

For the high resolution script
------------------------------
See the cnossos_bioshare_HR.sql
