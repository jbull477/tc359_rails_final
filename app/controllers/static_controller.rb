class StaticController < ApplicationController
	helper StaticHelper
  def home
  end

  def about
  end

  def cats
  	 @cats = CatAPI.new.get_images(results_per_page: params[:number_of_cats] || 1)
  end

end
