class TestController < ApplicationController
  def index
      user=User.create(name:"Fefe", email: "fefe39000@yopmail.com")
      UserMailer.welcome_email(user).deliver_now
  end
end
