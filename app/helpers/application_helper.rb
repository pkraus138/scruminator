module ApplicationHelper
  def avatar_url_for(email)
    gravatar_id = Digest::MD5.hexdigest(email)
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end

  def display_name_for(user)
    if user.full_name == " "
      user.email
    else
      user.full_name
    end
  end
end
