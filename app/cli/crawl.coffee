mongo = require 'mongodb'
request = require 'request'

server = new mongo.Server "127.0.0.1", 27017, {}

client = new mongo.Db 'test', server

# save() updates existing records or inserts new ones as needed
resultCrawl = (dbErr, collection) ->
	console.log "Unable to access database: #{dbErr}" if dbErr
	request.get { uri:'http://localhost:8080/job/absolutely_must_not_fail/api/json', json: true }, (err, r, body) -> 
		collection.save { 
			_id:"root",
			lastBuild:body.lastBuild.number,
			lastUnsuccessfulBuild:body.lastUnsuccessfulBuild.number
        	 }, (err, docs) ->
			console.log "Unable to save record: #{err}" if err
			client.close()

client.open (err, database) ->
	client.collection 'results', resultCrawl
