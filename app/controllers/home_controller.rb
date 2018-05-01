class HomeController < ApplicationController
  def index
    @images = Image.all
  end

  def reeftanks
  	@images = Image.where("category='Reef Tanks'")
  end

  def portraits
  	@images = Image.where("category='Portraits'")
  end

  def landscapes
  	@images = Image.where("category='Landscapes'")
  end

  def about
  	@images = Image.where("category='about'")
  end

  def inquiries
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new()
    @inquiry.name = params[:inquiry]["name"]
    @inquiry.text = params[:inquiry]["text"]
    @inquiry.email = params[:inquiry]["email"]
    @inquiry.phone_number = params[:inquiry]["phone_number"]
    @inquiry.date = Time.now
    if @inquiry.save
      redirect_to new_path, :notice => "Your inquiry was submitted!"
    else
      render "inquiries", :notice => "Please try again"
    end
  end

  def new
  end
end
