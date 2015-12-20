class AnimalsController < ApplicationController

  load_and_authorize_resource :clinic
  load_and_authorize_resource :animal, :through => :clinic

  before_action :set_animal_properties, only: [:new, :edit]

  def show
  end

  def new
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

  def set_animal_properties
    @animal_properties = Hash.new

    @animal_properties['race'] = Race.all.collect { |r| [r.description, r.id] }
    @animal_properties['category'] = Category.all.collect { |r| [r.description, r.id] }
    @animal_properties['gender'] = Gender.all.collect { |r| [r.description, r.id] }
  end

  def animal_params
    params.require(:animal).permit(:animal_name, :owner_name, :birth_date, :weigth, :gender_id, :category_id, :race_id)
  end
end
