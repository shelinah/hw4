class SessionsController < ApplicationController
  def new
    # renders login form
  end

  def create
    user = User.find_by({ "email" => params["email"] })

    if user.present?
      encrypted_password = BCrypt::Password.new(user["password_digest"])

      if encrypted_password == params["password"]
        session["user_id"] = user["id"]
        redirect_to("/places")
      else
        redirect_to("/login")
      end
    else
      redirect_to("/login")
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to("/login")
  end
end