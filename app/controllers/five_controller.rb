class FiveController < ApplicationController

  def index
    # @@form = Form.all
    form = Form.select(:input).distinct
    puts form
  end

  def perform

    form = Form.new

    form.input = params[:input_element]

    form.save

    # redirect_to :back
    # puts @input_element

    # @input_element = params[:input_element]

    # puts @input_element

    redirect_back fallback_location: root_path


    # @textarea_element = params[:textarea_element]
    # @age = params[:age] || 0
    # @pet_dog = params[:pet_dog] || 0
    # @pet_cat = params[:pet_cat] || 0

  end


end

