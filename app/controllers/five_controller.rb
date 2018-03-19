class FiveController < ApplicationController
  def index
  end

  def perform
    puts params[:text]
    # redirect_to :back
    redirect_back fallback_location: root_path

  end

end
