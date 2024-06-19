class MessagesController < ApplicationController
  before_action :set_room, only: %i[new create]

  def new
    @message = @room.messages.new
  end

  def create
    @message = @room.messages.create!(message_params)

    respond_to do |format|
      # This line indicates that the response should be prepared in the Turbo
      # Stream format, which is used for updating the content on the client
      # side using Turbo Streams. The existing format.html block redirects to
      # the room after the message creation, while the new format.turbo_stream
      # block allows for dynamic updates to be sent to the client.
      format.turbo_stream
      format.html { redirect_to @room }
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
