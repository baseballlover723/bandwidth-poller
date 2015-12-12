class UserController < ApplicationController
  def all
    @user = User.new
    @users = User.all
    puts @users.as_json
  end

  def new
    @user = User.new
  end

  def create
    User.create(
        name: params["user"]["name"],
        username: params["user"]["username"],
        encrypted_password: encrypt(params["user"]["password"])
    )
    all
    render action: "all"
  end

  def destroy
    User.find(params["id"]).destroy!
    redirect_to action: "all"
  end

  def destroy_all
    User.delete_all
    redirect_to action: "all"
  end
end
