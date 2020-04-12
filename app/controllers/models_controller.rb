class ModelsController < ApplicationController

  def index
    #this is our list page for the models

    @number = rand(100)

    @models = Model.all

  end

  def new
    #form for adding a new review
    @model = Model.new

  end

  def create
    # take info from the form and add it to the database
    @model = Model.new(form_params)

    #save to database
    @model.save

    #redirect to homepage
    redirect_to root_path
  end

  def show
    #individual model page
    @model = Model.find(params[:id])
  end

  def destroy
    #find the individual model
    @model = Model.find(params[:id])

    #destroy
    @model.destroy

    #redictect to homepage
    redirect_to root_path
  end


  def edit
    #find the individual model
    @model = Model.find(params[:id])
  end

  def update
    # find the individual review
    @model = Model.find(params[:id])

    # update with the form info
    @model.update(form_params)

    # redirect somewhere new
    redirect_to model_path(@model)

  end

  def form_params
    params.require(:model).permit(:title, :description, :rating, :category)
  end



end
