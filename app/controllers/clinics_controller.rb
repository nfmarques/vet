class ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show, :edit, :update, :destroy]

  def index
    @clinics = Clinic.all
  end

  def show
  end

  def new
    @clinic = Clinic.new
  end

  def edit
  end

  def create
    @clinic = Clinic.new(clinic_params)

    respond_to do |format|
      if @clinic.save
        format.html { redirect_to @clinic, notice: 'Clinic was successfully created.' }
        format.json { render :show, status: :created, location: @clinic }
      else
        format.html { render :new }
        format.json { render json: @clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clinic.update(clinic_params)
        format.html { redirect_to @clinic, notice: 'Clinic was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic }
      else
        format.html { render :edit }
        format.json { render json: @clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clinic.destroy
    respond_to do |format|
      format.html { redirect_to clinics_url, notice: 'Clinic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_clinic
    @clinic = Clinic.find(params[:id])
  end

  def clinic_params
    params.require(:clinic).permit(:clinic_name, :address, :email, :phone)
  end

end
