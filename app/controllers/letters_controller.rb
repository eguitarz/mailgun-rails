class LettersController < ApplicationController
	def index
		@letters = Letter.all
	end

	def show
		@letter = Letter.find(parmas[:id])
	end

	def new
		@letter = Letter.new
	end

	def create
		@letter = Letter.create(params[:letter])
	end
end
