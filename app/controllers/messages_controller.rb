class MessagesController < ApplicationController
  before_action :set_message, only: [:update, :destroy]

  # POST /messages
  def create
    @message = Message.new(message_params)

    if @message.save
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    message = Message.find(params[:id])
    message.update(message_params)

    render json: message
  end

  # DELETE /messages/1
  def destroy
    @message.destroy

    render json: @message
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:description, :content, :category_id)
    end
end
