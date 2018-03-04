class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(:id)
  end
end
