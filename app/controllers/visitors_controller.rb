require 'parse-ruby-client'

class VisitorsController < ApplicationController
  before_filter :init_parse
  
  def index
    venues_query = @parse.query("Rate")
    @venues = venues_query.get
  end
  
  private
  
    def init_parse
      @parse = Parse.create :application_id => "FXbSp2Zxvbf48HmBB1IT2hCRDH9ndrJsgy8ZXEaA",
                            :api_key        => "9R6QlLNW9cYclCj434QHTVltzDM0PDvb38BXAl0h"
    end
end
