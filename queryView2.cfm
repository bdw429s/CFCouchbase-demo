<cfscript>
	
	cbClient = new cfcouchbase.CouchbaseClient();
	
	results = cbClient.query(
				designDocumentName = "Cartoons",
				viewName = "Features",
				options = {
					key = "gloves"
				}
			  );
	
	writeOutput("Number of characters wearing gloves: " & results[1].value);
	
	writeOutput("<br><br>");
	
	results = cbClient.query(
				designDocumentName = "Cartoons",
				viewName = "Features",
				options = {
					key = "gloves",
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

