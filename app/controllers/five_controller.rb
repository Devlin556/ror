class FiveController < ApplicationController

  def index
    # @@form = Form.all
    form = Newform.last
    if(form != nil) 
      @input = form[:input]
      @textarea = form[:textarea]
      @radio = form[:radio]
      @checkbox = form[:checkbox]
    end

  end

  def perform

    form = Newform.new
    puts params[:pet_cat] 
    puts params[:pet_dog] 
    form.input = params[:input_element]
    form.textarea = params[:textarea_element]
    form.radio = params[:age] || 0
    form.checkbox = ''

    if (params[:pet_dog] == '1') 
      print('Success')
      form.checkbox += 'Have a dog '
    end
    

    if (params[:pet_cat] == '1') 
      form.checkbox += 'Have a cat '
    end

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

