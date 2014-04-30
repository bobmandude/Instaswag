class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    @url1 = "http://i.imgur.com/C5kf5Yb.gif"
    @url2 = "http://i.imgur.com/a8bTQzf.jpg"
    @url3 = "http://4.bp.blogspot.com/-fYJrkNWec08/T9EYOmNGPNI/AAAAAAAAC04/UtdRRM8a3hc/s640/cat-fat-dancing-cat-gif.gif"
    render 'home'
  end
  
  def show
    @photo = Photo.find_by_id(params['id'])
    render 'show'
  end
 
  def new
  end
  
  def create
    p = Photo.new
    p.url1 = params['url1']
    p.url2 = params['url2']
    p.url3 = params['url3']
    p.save
    redirect_to "/swag/#{ p.id }"
  end
  
  def edit
    @photo = Photo.find_by_id(params['id'])
  end
  
  def update
    p = Photo.find_by_id(params['id'])
    p.url1 = params['url1']
    p.url2 = params['url2']
    p.url3 = params['url3']
    p.save
    redirect_to "/swag/#{ p.id }"
  end
  
end


