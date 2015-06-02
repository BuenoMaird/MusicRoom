module TextsHelper
  def self_or_other(text)
    text.user == @current_user ? "self" : "other"
  end
 
  def text_interlocutor(text)
    text.user == text.discussion.sender ? text.discussion.sender : text.discussion.recipient
  end
end
