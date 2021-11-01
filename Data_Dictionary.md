#Rating table:

|Column 	  | Type	  |         				Refrence						 |
|-----------------|-------------- |----------------------------------------------------------------------------------------------|
|ID      	  | INT		  | 		             Primary Key, Auto incremented					 |
|Order_ID         | INT		  |                          Foreign Key, to order table                          		 |
|Overall_Rating   | INT		  |                          To maintain rating                     			         |

#Food_Rating table:

|Column 	    | Type	    |         				Refrence						 |
|-------------------|-------------- |--------------------------------------------------------------------------------------------|
|FoodRating_id	    | INT	    |                 	    Primary Key, Auto incremented 					 |
|Order_ID	    | INT	    |                       Foreign Key, to order table                                          | 
|Restaurant_ID      | INT	    |                       Foreign Key, to restaurant table                                     | 
|Overall_Food_Rating| INT	    |                       To keep food ratings                                                 |

#Driver_Rating table: 	 


|Column 	          | Type	|         				Refrence					  |
|-------------------------|-------------|-----------------------------------------------------------------------------------------|
|ID		          | INT	    	|                 	Primary Key, Auto incremented 					  |
|Driver_ID	          | INT	    	|                       Foreign Key, to driver table                                      | 
|Order_ID                 | INT	    	|                       Foreign Key, to order table                                       | 
|DeliveryDriver_RatingINT | INT	        |         		To keep food ratings                                              |	