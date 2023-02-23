class PagesController < ApplicationController
  def home
  end

  def about
  end

  def iris
    @flowers = Flower.all
  end

  def sort_by_sepal_length
    @flowers = Flower.all.order('sepal_length')

    render :iris
  end
end
