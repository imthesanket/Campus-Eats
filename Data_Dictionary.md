# Tables related to rating 

### Ratings table:

|Column 	  							| 					Type	  			|         				Refrence						 |
|-------------------					|-------------- 						|-----------------------------------------------		 |
|id      	  							| INT		  							| 		             Primary Key, Auto incremented		 |
|order_id         						| INT		  							|         Foreign Key, to order table           		 |
|overall_rating   						| INT		  							|          To maintain rating     		   		         |

### Food rating table:

|Column 	   							| Type	    							|         				Refrence						                |
|-------------------			|--------						  		|---------------------------------------------------	|
|foodrating_id	    			| INT	    							  |      Primary Key, Auto incremented 					        |
|order_id	    						| INT	   								  |      Foreign Key, to order table   			            | 
|restaurant_id      			| INT	    							  |        Foreign Key, to restaurant table       		  | 
|overall_foodrating			| INT	    							  |           To keep food ratings    	                |

### Delivery rating table: 	 


|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|id		          						| INT	    							|                 	Primary Key, Auto incremented 	     |
|driver_id	          					| INT	    							|                 Foreign Key, to driver table           | 
|order_id                 				| INT	    							|                       Foreign Key, to order table      | 
|deliverydriver_rating					| INT	        						|         		To keep food ratings        		     |

# Tables related to user info

### Person table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|person_id		          				| INT	    							|       Primary Key, Auto incremented          	 	     |
|person_name	          				| VARCHAR	    						|        Person's name                   | 
|person_email                			| VARCHAR	    						|         Person's email address                    | 
|cell									| BIGINT	        					|         		       Person's contact number 		     |

### Faculty table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|faculty_id		          				| INT	    							|           Faculty ID      		   							     |
|person_id	          					| INT	    							|        Foreign Key, taken from person table                    							 | 
|title                					| VARCHAR	    						|           Faculty title                  							 | 
|degree_college							| VARCHAR	        					|         		   Faculty's degree college   		     						 |
|highest_degree							| VARCHAR								|								Highest degree awarded to Faculty|

### Student table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|student_id		          				| INT	    							|         Primary Key, Auto incremented        		     							 |
|person_id	          					| INT	    							|           Foreign Key,  taken from person table                 							 | 
|graduation_year                		| INT	    							|             Student's graduation year               							 | 
|major									| VARCHAR	        					|         		      Pursuing major		   						     |
|type									| VARCHAR								|														 Student type|

### Staff table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|staff_id		          				| INT	    							|                Staff ID 		     							 |
|person_id	          					| INT	    							|     Foreign Key,  taken from person table                       							 | 
|position 			               		| VARCHAR	    						|       Staff's assigned position                     							 | 
|is_admin								| VARCHAR	        					|         		      Admin status of status (T/F)		   						     |

### Driver table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|driver_id		          				| INT	    							|             Primary Key, Auto incremented    		     							 |
|student_id	          					| INT	    							|              Foreign Key,  taken from student table              							 | 
|license_number                			| VARCHAR	    						| License number of registered driver                           							 | 
|date_hired								| DATE	        						|       Hiring date of driver  		      		   						     |
|rating									| FLOAT									|								Rating received on the completed deliveries 						 |


# Restaurant information tables

### Order detail table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|order_id		          				| INT	    							|           Primary Key, Auto incremented      		     							 |
|person_id	          					| INT	    							|           Foreign Key,  taken from person table                  							 | 
|delivery_id                			| INT	    							|         Foreign Key,  taken from delivery table                    							 | 
|location_id							| INT	        						|         		   Foreign Key,  taken from location table    		   						     |
|driver_id								| INT									|											Foreign Key,  taken from driver table 			 |
|restaurant_id							| INT									|											Foreign Key,  taken from restaurant table 			 |
|total_price							| FLOAT									|							Individual order's total amount 							 |
|delivery_charge							| FLOAT									|											Delivery charges levied			 |

### Restaurant detail table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|restaurant_id		          			| INT	    							|           Primary Key, Auto incremented          		     							 |
|location	          					| VARCHAR	    							|            Location of restaurant                							 | 
|restaurant_name                		| VARCHAR	    							|      Restaurant name                      							 | 
|schedule								| VARCHAR	        						|   Open hours      		      		   						     |
|website								| VARCHAR									|									Restaurant's website					 |

# Misc tables

### Locations table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|location_id		          			| INT	    							|            Primary Key, Auto incremented      		     							 |
|location_name	          					| VARCHAR	    							| Location name                           							 | 
|location_address                		| VARCHAR	    							|              Location address              							 | 
|latitude								| VARCHAR	        						|         		      		   	Latitude detail of location					     |
|longitude								| VARCHAR									|									Longitude detail of location					 |
|drop_off_point								| VARCHAR									|												Drop off point of the location		 |

### Vehicle table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|vehicle_id		          			| INT	    							|                 Primary Key, Auto incremented  		     							 |
|vehicle_plate	          					| VARCHAR	    							|       Registered late for vehicle                      							 | 
|model                		| VARCHAR	    							| Vehicle's model detail                            							 | 
|make								| VARCHAR	        						|       Vehicle's make detail  		      		   						     |

## Delivery table:

|Column 	          					| Type									|         				Refrence					  	 |
|-------------------------				|-------------							|------------------------------------------------------  |
|delivery_id		          			| INT	    							|           Primary Key, Auto incremented      		     							 |
|driver_id	          					| INT	    							|             Foreign Key,  taken from driver table                							 | 
|vehicle_id                		| INT	    							|                Foreign Key,  taken from vehicle table             							 | 
|delivery_time								| DATETIME	        						|         		      	Detailed time of delivery	   						     |
