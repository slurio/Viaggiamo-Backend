class CategoriesController < ApplicationController

  # POST /categories
  def create  
    category = Category.find_by(user_id: params[:currentUser][:id], title: params[:category][:title])

    if category
      message = Message.create(category: category, description: params[:message][:description], language: params[:message][:language], voice: params[:message][:voice], content: params[:message][:content])
      
      render json: Category.where(user_id: params[:currentUser][:id])
    else
      new_category = Category.create(title: params[:category][:title], user_id: params[:currentUser][:id])
      
      message = Message.create(category: new_category, description: params[:message][:description], language: params[:message][:language], voice: params[:message][:voice], content: params[:message][:content])
      
      render json: Category.where(user_id: params[:currentUser][:id])
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:title, :user_id, :messages)
    end
end
