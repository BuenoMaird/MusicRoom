class TextsController < ApplicationController
 
  def create
    @discussion = Discussion.find(params[:discussion_id])
    @text = @discussion.texts.build(text_params)
    @text.user_id = @current_user.id
    @text.save!
 
    @path = discussion_path(@discussion)
  end
 
  private
 
  def text_params
    params.require(:text).permit(:body)
  end
end