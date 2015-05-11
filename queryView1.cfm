<cfscript>
	
	cbClient = new cfcouchbase.CouchbaseClient();
	
	cbClient.saveView(
		'Minecraft',
		'listItems',
		'function (doc, meta) {
		  emit(meta.id, doc.username);
		}'
	);			
	
	results = cbClient.query(
				designDocumentName = "Minecraft",
				viewName = "listItems",
				options = {
					sortOrder = "ASC",
					offset = "1",
					limit = "2",
					includeDocs = true
				}
			  );
	
	writeDump(results);
		
	cbClient.shutdown();

</cfscript>