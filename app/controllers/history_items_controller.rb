class HistoryItemsController < ApplicationController
  before_action :set_history_item, only: [:show, :edit, :update, :destroy]

  # GET /history_items
  # GET /history_items.json
  def index
    @history_items = HistoryItem.all
  end

  # GET /history_items/1
  # GET /history_items/1.json
  def show
  end

  # GET /history_items/new
  def new
    @history_item = HistoryItem.new
  end

  # GET /history_items/1/edit
  def edit
  end

  # POST /history_items
  # POST /history_items.json
  def create
    @history_item = HistoryItem.new(history_item_params)

    respond_to do |format|
      if @history_item.save
        format.html { redirect_to @history_item, notice: 'History item was successfully created.' }
        format.json { render :show, status: :created, location: @history_item }
      else
        format.html { render :new }
        format.json { render json: @history_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_items/1
  # PATCH/PUT /history_items/1.json
  def update
    respond_to do |format|
      if @history_item.update(history_item_params)
        format.html { redirect_to @history_item, notice: 'History item was successfully updated.' }
        format.json { render :show, status: :ok, location: @history_item }
      else
        format.html { render :edit }
        format.json { render json: @history_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_items/1
  # DELETE /history_items/1.json
  def destroy
    @history_item.destroy
    respond_to do |format|
      format.html { redirect_to history_items_url, notice: 'History item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_history_item
    @history_item = HistoryItem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def history_item_params
    params.require(:history_item).permit(:observation, :animal_id, :document_id, :user_id)
  end
end
