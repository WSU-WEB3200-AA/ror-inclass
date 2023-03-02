class FlowersController < ApplicationController
  def index
    @flowers = Flower.all
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.find(params[:id])
    if @flower.update(get_params)
      redirect_to flowers_url(), notice: "Successfull update operation"
    else
      render :edit, status: "Not successfull"
    end
  end

  def get_params
    params.require(:flower).permit(:sepal_length, :sepal_width, :petal_length, :petal_width, :species, :notes)
  end
end
