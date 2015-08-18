class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		redirect_to tags_path
		#find the article with a given path
		#destroy the article
		#optional: create a flash path for it
		#redirect to home page
	end


	
end
