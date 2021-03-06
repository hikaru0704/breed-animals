class AnimalsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new]
  before_action :set_animal, only: [:show, :edit, :destroy, :update]
  
  def index
    @animals = Animal.all
  end
  
  def edit
  end  
  
  def show
  end
  
  def new
    @animal = Animal.new
  end
  
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render 'new'
    end
  end
  
  def destroy
    @animal.destroy
    redirect_to animals_path
  end
  
  def update
    if @animal.update(animal_params)
      redirect_to animal_path
    else
      render 'edit'
    end
  end
  
  private
  def animal_params
    params.require(:animal).permit(:name, :age, :sex, :breed, :animal_type_id, :chronic_illness)
  end
  
  def set_animal
     @animal = Animal.find(params[:id])
  end
end
