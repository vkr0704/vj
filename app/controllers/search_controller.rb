class SearchController < ApplicationController

def index
	@q=params[:q]
  @name = Frnd.find(:all, :conditions=>{:name=>@q})
	end

def show
  @q=params[:q]
  @name = Frnd.find(:all, :conditions=>{:name||:gender =>@q})
#  puts "name is "+@name.inspect
end

end
