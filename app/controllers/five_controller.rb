class FiveController < ApplicationController
  def index
  end

  def perform
    puts params[:text]
    redirect_to :back
  end

end
