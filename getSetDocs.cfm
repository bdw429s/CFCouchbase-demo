<cfscript>
		
	cbClient = new cfcouchbase.CouchbaseClient();
	
	cbClient.set(1,{
		name: "Micky",
		animal: "mouse",
		gender: "male",
		features = [
			"ears",
			"gloves"			
		]
	});
	
	cbClient.set(2,{
		name: "Minnie",
		animal: "mouse",
		gender: "female",
		features = [
			"ears",
			"gloves",
			"bow"	
		]
	});
	
	cbClient.set(3,{
		name: "Donald",
		animal: "duck",
		gender: "male",
		features = [
			"hat",
			"bow tie"	
		]
	});
	
	cbClient.set(4,{
		name: "Goofy",
		animal: "dog",
		gender: "male",
		features = [
			"hat",
			"vest",
			"gloves"	
		]
	});
	
	
	cbClient.set(5,{
		name: "Pete",
		animal: "cat",
		gender: "male",
		features = [
			"fat",
			"gloves",
			"mean"
		]
	});
	
	writeDump(cbClient.get(3));
		
	cbClient.shutdown();
	
</cfscript>