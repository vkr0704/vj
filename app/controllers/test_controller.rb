class TestController < ApplicationController
	def hi
		@time=Time.now
	end
	
	def bye
		@time=Time.now
	end
	
	def file
		@files=Dir.glob('*')
	end
	
	def ts
	
	end
	
	def update
		@vj=params[:first_name]
		end
end
