﻿<cfscript>
	
	cbClient = new cfcouchbase.CouchbaseClient();
	
	cbClient.saveView(
		'Cartoons',
		'listCharacters',
		'function (doc, meta) {
		  emit(meta.id, doc.name);
		}'
	);			
	
	results = cbClient.query(
				designDocumentName = "Cartoons",
				viewName = "listCharacters",
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