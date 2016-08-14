class AnimalsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update]
  
  def index
    @animals = Animal.all
  end
  
  def edit
    @animal = Animal.find(params[:id])
  end  
  
  def show
    @animal = Animal.find(params[:id])
  end
  
  def new
    @animal = Animal.new
  end
  
  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animals_path
  end
  
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end
  
  private
  def animal_params
    params.require(:animal).permit(:name, :age, :sex, :breed, :chronic_illness)
  end

end
