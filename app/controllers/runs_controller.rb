class RunsController < ApplicationController

  def create
    if User.exists?(username: data_params[:username])
      User.find_by(username: data_params[:username])
    else
      @user = User.create(username: data_params[:username])
    end
    if Contact.exists?(name: data_params[:name])
      @contact = Contact.find_by(name: data_params[:name])
    else
      Contact.create(name: data_params[:name], number: data_params[:number])
    end
    @run = Run.create!(location: data_params[:location], time: data_params[:time], status: "pending" )
  # when run is created set status to pending
  end

  private

  def data_params
    params.permit(:username, :name, :number, :location, :time, :status)
  end

end
