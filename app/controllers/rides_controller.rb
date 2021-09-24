class RidesController < ApplicationController

  def create
    @ride = Ride.create(ride_params)
    redirect_to user_path(@ride.user)
  end

  def update
    @ride = Ride.find(params[:id])
  end


  private
  def ride_params
    params.require(:ride).permit(:attraction_id, :user_id)
  end
end
