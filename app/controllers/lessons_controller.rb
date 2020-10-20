class LessonsController < ApplicationController

  def index
    render json: Lesson.where(language: params[:language].capitalize)
  end
  
end
