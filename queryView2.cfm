<cfscript>
	
	cbClient = new cfcouchbase.CouchbaseClient();
	
	cbClient.saveView(
		'Minecraft',
		'Features',
		'function (doc, meta) {
		  for(var i in doc.features) {
		    emit(doc.features[i], doc.username);
		  }  
		}',
		'_count'
	);
		
	results = cbClient.query(
				designDocumentName = "Minecraft",
				viewName = "Features",
				options = {
					key = "scary"
				}
			  );
	
	writeOutput("Number of scary items: " & results[1].value);
	
	writeOutput("<br><br>");
	
	results = cbClient.query(
				designDocumentName = "Minecraft",
				viewName = "Features",
				options = {
					key = "scary",
					reduce = false
				}
			  );
			  
	for(i in results) {
		writeOutput(i.value & "<br>");
	}
	
	writeOutput("<br>");
	
	writeDump(results);
		
	cbClient.shutdown();


</cfscript>

