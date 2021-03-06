class LettersController < ApplicationController
	API_KEY = ENV['MAILGUN_KEY']
	API_DOMAIN = ENV['MAILGUN_DOMAIN']
	API_URL = "https://api:#{API_KEY}@api.mailgun.net/v2/#{API_DOMAIN}/messages"

	def index
		@letters = Letter.all
	end

	def show
		@letter = Letter.find(params[:id])
		@url = API_URL
	end

	def edit
		@letter = Letter.find(params[:id])
	end

	def update
		@letter = Letter.find(params[:id])
		flash[:notice] = flash[:error] = ''
		if @letter.update(letter_params)
			flash.new[:notice] = 'updated'
		else
			flash.new[:error] = 'failed to update'
		end

		redirect_to letter_path(params[:id])
	end

	def destroy
		@letter = Letter.find(params[:id])
		@letter.destroy()

		redirect_to :letters
	end

	def new
		@letter = Letter.new
	end

	def create
		@letter = Letter.new(letter_params)
		flash[:notice] = flash[:error] = ''
		if @letter.save
			flash.new[:notice] = 'created a mail'
		else
			flash.new[:error] = 'failed to create mails'
		end

		redirect_to :letters
	end

	def upload_template
		respond_to do |format|
			format.json { render :json => {:file => params[:files]} }
		end
	end

	private
	def letter_params
		params.require(:letter).permit(:title, :from, :to, :cc, :bcc, :campaign_id, :body)
	end
end
