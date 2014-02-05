require "rest_client"
require "json"

module Locomotive
    module Liquid
        module Drops
            Site.class_eval do
                def search
                    if(@data == nil)
                        print "Contacting google CSE for results.\n";
                        url = "https://www.googleapis.com/customsearch/v1?cx=009946976809586658172%3Avdj_rjjftbq&key=AIzaSyARds6-ZkI0XkRu-6a0H_HcGhtkgOFzgtQ&q=" + @context.registers[:controller].params[:q];
                        @data = JSON.parse(RestClient.get(url));
                    end
                    @data
                end
            end
        end
    end
end