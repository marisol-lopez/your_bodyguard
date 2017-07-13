class RunsController < ApplicationController

  def create
    @run = Run.create!(run_params)
  end

  private

  def run_params
    params.permit(:location, :time)
  end

end
