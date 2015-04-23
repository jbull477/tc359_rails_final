require 'open-uri'
class StaticController < ApplicationController
  def home
    doc = Nokogiri::HTML(open("http://chicago.cubs.mlb.com/stats/sortable.jsp?c_id=chc#elem=%5Bobject+Object%5D&tab_level=child&click_text=Sortable+Player+hitting&game_type='R'&season=2015&season_type=ANY&league_code='MLB'&sectionType=sp&statType=hitting&page=1&ts=1429560430779"))
  end

  def about
  end

  def cats
    @cats = CatAPI.new.get_images(results_per_page: params[:number_of_cats] || 1)
  end

end
