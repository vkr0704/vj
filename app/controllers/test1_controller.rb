class Test1Controller < ApplicationController
	def text
		@n1=params[:n1]
		@n2=params[:n2]
		end
			
	def show
		@data= params[:text1]
		end
end
