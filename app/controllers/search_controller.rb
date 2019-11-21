class SearchController < ApplicationController
    def home
    end
    def results
        request = HomedayService.search_properties(params)
        if request.body['properties']
            @properties = request.body['properties']
        else
            @errors = request.body['errors']
        end
    end
end
