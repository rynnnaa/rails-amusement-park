class RidesController < ApplicationController

  def create
    @ride = Ride.create(ride_params)
    @ride.user.mood
    flash[:message] = @ride.take_ride
    redirect_to user_path(@ride.user)
  

    # redirect_to user_path(@ride.user), flash: { message: take_this_ride }
  end

  def update
    @ride = Ride.find(params[:id])
  end


  private
  def ride_params
    params.require(:ride).permit(:attraction_id, :user_id)
  end
end
