class PhotosController < ApplicationController
  
  def popular
  	params[:page] = params.fetch(:page, 1)
  	@popular_photos = JSON.parse(Photos.popular(params[:page]).body)["photos"]
  	@page_number = params[:page].to_i + 1

  	respond_to do |format|
      format.html
      format.js
    end
    
  end

end