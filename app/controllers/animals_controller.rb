class AnimalsController < ApplicationController

  before_action :get_clinic, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @animal = @clinic.animals.new
  end

  def edit
  end

  def create
    @animal = @clinic.animals.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to clinic_animal_path(@clinic, @animal), notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to clinic_animal_path(@clinic, @animal), notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to clinic_path(@clinic), notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_clinic
    @clinic = Clinic.find(params[:clinic_id])
  end

  def set_animal
    @animal = @clinic.animals.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:animal_name, :owner_name, :birth_date, :weigth)
  end
end
