-- CHRISTY'S MODIFICATIONS TO MORELY'S CODE
-- THIS RUNS THE CNOSSOS MODEL
--
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
--##						 ##
--##	CNOSSOS-EU ROAD TRAFFIC NOISE MODEL	 ##
--##	ADAPTED FOR BIOSHARE PROJECT		 ##
--##	[2012 report eur 25379 en] 		 ##
--##	24hr Version				 ##
--##						 ##
--##	David Morley: d.morley@imperial.ac.uk	 ##
--##	Version 1.3, 4th August 2015		 ##
--##						 ##
--#################################################

--## For full details please see Environmental Pollution  (2015), pp. 332-341 DOI information: 10.1016/j.envpol.2015.07.031

-- set the environment so that tables are created in the correct schema
-- SET search_path = cnossos, "$user", public; -- For current session only

drop table if exists output;

select csharp_loop_mimic(); 

select * from output limit 100;


-- UPDATE OUTPUT LOCATION AS DESIRED
copy output to 'C:/Program Files/PostgreSQL/9.2/data/output.csv' delimiter ',' csv header;

--################################################################################################

-- FILENAMES	: DEFINITION [HEADERS]
-- recpt	: Receptors [gid, geom(point)]	
-- roads	: Road network, light, heavy hourly flow and speed [gid, geom(line), qh_0, ql_0 ... qh_23, ql_23, speed1, speed3]
-- landcover	: Land classes, 3 character Corine code [gid, geom(polygon), code_06]
-- buildings	: Building heights [gid, geom(polygon), height]
-- mettemp	: Temperature at met station [gid, geom(point), air_temp], or a constant temperature
-- metwind	: Wind direction proportion [gid, geom(point), ne, se, sw, nw], or a constant proportion

--################################################################################################

