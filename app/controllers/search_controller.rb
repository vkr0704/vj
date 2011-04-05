class SearchController < ApplicationController

def index
	@q=params[:q]
  @name = Frnd.where("name=:qa OR age=:qa AND age!=0", {:qa => params[:q]})
	end

def show
  @q=params[:q]
  @name = Frnd.find(:all, :conditions=>{:name||:gender =>@q})
#  puts "name is "+@name.inspect
end

end
