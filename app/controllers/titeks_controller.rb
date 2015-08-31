class TiteksController < ApplicationController
  before_action :set_titek, only: [:show, :edit, :update, :destroy]

  # GET /titeks
  # GET /titeks.json
  def index
    @titeks = Titek.all
  end

  # GET /titeks/1
  # GET /titeks/1.json
  def show
  end

  # GET /titeks/new
  def new
    @titek = Titek.new
  end

  # GET /titeks/1/edit
  def edit
  end

  # POST /titeks
  # POST /titeks.json
  def create
    @titek = Titek.new(titek_params)

    respond_to do |format|
      if @titek.save
        format.html { redirect_to @titek, notice: 'Titek was successfully created.' }
        format.json { render :show, status: :created, location: @titek }
      else
        format.html { render :new }
        format.json { render json: @titek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titeks/1
  # PATCH/PUT /titeks/1.json
  def update
    respond_to do |format|
      if @titek.update(titek_params)
        format.html { redirect_to @titek, notice: 'Titek was successfully updated.' }
        format.json { render :show, status: :ok, location: @titek }
      else
        format.html { render :edit }
        format.json { render json: @titek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titeks/1
  # DELETE /titeks/1.json
  def destroy
    @titek.destroy
    respond_to do |format|
      format.html { redirect_to titeks_url, notice: 'Titek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titek
      @titek = Titek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def titek_params
      params[:titek]
    end
end
