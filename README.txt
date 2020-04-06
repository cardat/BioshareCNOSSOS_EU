--################################################################################
--## Copyright 2014-15 David Morley
--## 
--## Licensed under the Apache License, Version 2.0 (the "License");
--## you may not use this file except in compliance with the License.
--## You may obtain a copy of the License at
--## 
--##     http://www.apache.org/licenses/LICENSE-2.0
--## 
--## Unless required by applicable law or agreed to in writing, software
--## distributed under the License is distributed on an "AS IS" BASIS,
--## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--## See the License for the specific language governing permissions and
--## limitations under the License.
--################################################################################

--#################################################
--##						 					
--##	CNOSSOS-EU ROAD TRAFFIC NOISE MODEL	 	
--##	ADAPTED FOR BIOSHARE PROJECT		 	
--##	[2012 report eur 25379 en] 		 		
--##	24hr Version				 			
--##						 					
--##	David Morley: d.morley@imperial.ac.uk	
--##	Version 1.2, 18th April 2016	 
--##						 
--#################################################


--#################################################
--##						 					
--##	Modified by Christy Geromboux and Ivan Hanigan	 	
--##	Modifications include:
--##	 -Updating of depricated functions 	
--##	 -Reordering and breaking up the SQL for the low resolution code to resolve dependencies 		 		 
--##						 
--#################################################

--## For full details please see Environmental Pollution  (2015), pp. 332-341 DOI information: 10.1016/j.envpol.2015.07.031
--## This is a version of the CNOSSOS-EU model as used in the above paper to make predictions for 'Model B'
--## It uses high resolution landcover data rather than corine, therefore does not buffer around the road network


## The sql files here are replications of the original work done by Morley et al. 2015 
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
