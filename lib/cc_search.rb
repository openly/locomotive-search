require "rest_client"
require "json"

module Locomotive
    module Liquid
        module Drops
            Site.class_eval do
                def search
                    if(@data == nil)
                        print "Contacting google CSE for results.\n";
                        cx = ::GOOGLE_SEARCH_CX || '009946976809586658172%3Avdj_rjjftbq'
                        key = ::GOOGLE_SEARCH_KEY || 'AIzaSyARds6-ZkI0XkRu-6a0H_HcGhtkgOFzgtQ'
                        queryParam = @context.registers[:controller].params[:q]
                        queryParam = URI::encode(queryParam)
                        url = "https://www.googleapis.com/customsearch/v1?cx=#{cx}&key=#{key}&q=" + queryParam;
                        @data = JSON.parse(RestClient.get(url));
                    end
                    @data
                end
            end
        end
    end
end