class DiscussionsController < ApplicationController
 
  layout false
 
  def create
    if Discussion.between(params[:sender_id],params[:recipient_id]).present?
      @discussion = Discussion.between(params[:sender_id],params[:recipient_id]).first
    else
      @discussion = Discussion.create!(discussion_params)
    end
 
    render json: { discussion_id: @discussion.id }
  end
 
  def show
    @discussion = Discussion.find(params[:id])
    @reciever = interlocutor(@discussion)
    @texts = @discussion.texts
    @text = Text.new
  end
 
  private
  def discussion_params
    params.permit(:sender_id, :recipient_id)
  end
 
  def interlocutor(discussion)
    @current_user == discussion.recipient ? discussion.sender : discussion.recipient
  end
end
