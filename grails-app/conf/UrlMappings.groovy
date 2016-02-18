class UrlMappings {

	static mappings = {
		
		"/rest/$controller/$id?"(parseRequest:true) {
			action = [GET: "show", DELETE: "delete", PUT: "update", POST: "save"]
		}
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
//		"/"(controller: 'app', action: 'redir')
		"500"(view:'/error')
	}
}
