-- CHRISTY'S MODIFICATIONS TO MORELY'S CODE
-- THIS FILE SETS UP ALL THE TYPES IN SQL
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

--################################################################################################


--return type for single path noise
create type llt_octave as (
	llt63 double precision,
	llt125 double precision,
	llt250 double precision,
	llt500 double precision,
	llt1000 double precision,
	llt2000 double precision,
	llt4000 double precision,
	llt8000 double precision
);

--return type for segment angle and distance
create type segtri as (
	theta double precision, --angle of view
	rmin double precision --perpendicular dist
);