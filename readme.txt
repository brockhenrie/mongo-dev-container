

MONGO_STRING = 'mongodb://dev:Password123!!@localhost:27017';


1) 
****This one to auto init the user and password from env******

docker run --name memories-db -d -v C:\Users\Gondor\Desktop\React\mongo\data\db:/data/db  -v C:\Users\Gondor\Desktop\React\mongo\data\conf:/etc/mongo -e MONGO_INITDB_ROOT_USERNAME=dev -e MONGO_INITDB_ROOT_PASSWORD=Password123!! -p 27017:27017 mongo --config /etc/mongo/mongod.conf






****to add a user manually, copy and paste following command and use following steps

docker run --name memories-db -d -v C:\Users\Gondor\Desktop\React\mongo\data\db:/data/db  -v C:\Users\Gondor\Desktop\React\mongo\data\conf:/etc/mongo -p 27017:27017 mongo --config /etc/mongo/mongod.conf


2) docker exec -it memories-db bash

3) mongo

4) use admin

5) Copy and paste function


db.createUser(
  {
    user: "dev",
    pwd: "Password123!!", 
    roles: [
      { role: "userAdminAnyDatabase", db: "admin" },
      { role: "readWriteAnyDatabase", db: "admin" }
    ]
  }
)



6) quit()

#To check the user was added correctly with admin

mongo -u dev -p --authenticationDatabase admin

#login with password



show dbs

use newDb