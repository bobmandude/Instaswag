class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def home
    @url1 = "http://i.imgur.com/C5kf5Yb.gif"
    @url2 = "http://i.imgur.com/a8bTQzf.jpg"
    @url3 = "http://4.bp.blogspot.com/-fYJrkNWec08/T9EYOmNGPNI/AAAAAAAAC04/UtdRRM8a3hc/s640/cat-fat-dancing-cat-gif.gif"
    render 'show'
  end
  
  def show
    if params['id'] == '1'
      @url1 = "http://www.reactiongifs.com/r/juhf.gif"
      @url2 = "http://www.reactiongifs.com/r/isn.gif"
      @url3 = "http://www.reactiongifs.com/r/sansa-stark.gif"
      elsif params['id'] == '2'
      @url1 = "http://i.imgur.com/C5kf5Yb.gif"
      @url2 = "http://i.imgur.com/a8bTQzf.jpg"
      @url3 = "http://4.bp.blogspot.com/-fYJrkNWec08/T9EYOmNGPNI/AAAAAAAAC04/UtdRRM8a3hc/s640/cat-fat-dancing-cat-gif.gif"
    end
    render 'show'
  end
 
end


