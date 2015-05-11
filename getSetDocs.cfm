<cfscript>
		
	cbClient = new cfcouchbase.CouchbaseClient();
	
	cbClient.set(1,{
		username: "wither",
		group: "monster",
		status: "active",
		features = [
			"small",
			"scary",
			"mulitheaded",
			"created"
		]
	});
	
	cbClient.set(2,{
		username: "zombie",
		group: "monster",
		status: "active",
		features = [
			"small",
			"cute",
			"spawned"
		]
	});
	
	cbClient.set(3,{
		username: "slime",
		group: "block",
		status: "inactive",
		features = [
			"swamp biomes",
			"spawned"
		]
	});
	
	cbClient.set(4,{
		username: "enderman",
		group: "monster",
		status: "inactive",
		features = [
			"scary",
			"spawned"
		]
	});
	
	
	writeDump(cbClient.get(1));
		
	cbClient.shutdown();
	
</cfscript>