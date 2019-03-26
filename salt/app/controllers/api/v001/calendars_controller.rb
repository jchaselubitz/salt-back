class Api::V001::CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all 
    render json: @calendars
  end

  def create
    #all needed params come through!
    #attache user_id
    @calendar = Calendar.new(calendar_params)
    if @calendar.valid?
      @calendar.save
      render json: @calendar
    else
      render json: "calendar parameters invalid"
    end


  end



private

  def calendar_params
    params.require(:calendar).permit(:start_date, :end_date, :user_id, index_calendars_on_user_id: [])
  end

end 
