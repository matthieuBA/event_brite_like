class TestController < ApplicationController
  def index
      user=User.create(name:"Fefe", email: "fefe39000@yopmail.com")
      puts "#"*100
      puts user.errors
      puts "#"*100
      UserMailer.welcome_email(user).deliver_now
  end
end
