class Api::V001::CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all 
    render json: @calendars
  end

  def create
   
    @calendar = Calendar.new(calendar_params)
    if @calendar.valid?
      @calendar.save
      params[:calendar][:recipes].map do |id|
        @RC = RecipeCalendar.create(recipe_id: id, calendar_id: @calendar.id)
      end
      render json: @calendar
    else
      render json: "calendar parameters invalid"
    end

  end



private

  def calendar_params
    params.require(:calendar).permit(:start_date, :end_date, :user_id)
  end

end 
