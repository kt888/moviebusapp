Moviebus app is a search engine for all the movies. Few movies like Lord of the rings, jobs have been saved to the database. If the user searches for a movie, at search for movie option it is retrieved from database and displayed. Further addtions will include displaying the imdb link and ratings.

Also the user can search for theatres. Currently only few theatres have been stored.

Also movies belongs to theatres and one theatre can have many movies. That is the relationship used.
The column theatrename in movies has been added later using migration. So is the column theatrenumber in theatres. This is to emphasize the need for adding columns or altering using migration.

URL to go to : http://localhost:3000/

There are different options. Some movies have been added, it can be verified by going to find a movie( Search for jobs, the result will be displayed.).Movies can also be added in add a movie.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Part 2 read me
INSTRUCTIONS
The database currently has only jaws movie with the association. Search for jaws and it will display where jaws is playing. The theatre displayed is amc. This is obtained from the theatre table.
Ajax has been used to add a theatre. The code is there in theatres folder under view.

For xml generation, type - http://localhost:3000/api/v1/theatres.xml in the url. I have made a separate folder for xml.