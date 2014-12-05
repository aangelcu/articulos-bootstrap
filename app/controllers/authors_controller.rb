class AuthorsController < ApplicationController
	def create
		@author = Author.new(author_params)

		if @author.save
			redirect_to @author, notice: 'Author was succesfuly created'
		else
			render :new
		end
	end

	private
	def author_params
		params.require(:author).permit(:name)
	end

end

