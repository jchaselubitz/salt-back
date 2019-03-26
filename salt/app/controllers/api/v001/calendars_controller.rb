class Api::V001::CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all 
    render json: @calendars
  end

  def create
    @calendar = Calendar.new(calendar_params)
    params[:calendar][:recipes].map do |id|
      RecipeCalendars.create(recipe_id: recipe_id[:id], calendar_id: @calendar.id)
    end
    if @calendar.valid?
      @calendar.save
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
