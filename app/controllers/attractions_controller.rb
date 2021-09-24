class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    # binding.pry
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
    @ride = @attraction.rides.build(user_id: @user.id)
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end
  
end
