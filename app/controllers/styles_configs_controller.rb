# frozen_string_literal: true
class StylesConfigsController < ApplicationController
  before_action :set_styles_config, only: [:show, :edit, :update, :destroy]

  # GET /styles_configs
  # GET /styles_configs.json
  def index
    @styles_configs = StylesConfig.all
  end

  # GET /styles_configs/1
  # GET /styles_configs/1.json
  def show; end

  # GET /styles_configs/new
  def new
    @styles_config = StylesConfig.new
  end

  # GET /styles_configs/1/edit
  def edit; end

  # POST /styles_configs
  # POST /styles_configs.json
  def create
    @styles_config = StylesConfig.new(styles_config_params)

    respond_to do |format|
      if @styles_config.save
        format.html { redirect_to @styles_config, notice: 'Styles config was successfully created.' }
        format.json { render :show, status: :created, location: @styles_config }
      else
        format.html { render :new }
        format.json { render json: @styles_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /styles_configs/1
  # PATCH/PUT /styles_configs/1.json
  def update
    respond_to do |format|
      if @styles_config.update(styles_config_params)
        format.html { redirect_to @styles_config, notice: 'Styles config was successfully updated.' }
        format.json { render :show, status: :ok, location: @styles_config }
      else
        format.html { render :edit }
        format.json { render json: @styles_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /styles_configs/1
  # DELETE /styles_configs/1.json
  def destroy
    @styles_config.destroy
    respond_to do |format|
      format.html { redirect_to styles_configs_url, notice: 'Styles config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_styles_config
    @styles_config = StylesConfig.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def styles_config_params
    params.require(:styles_config).permit(:background_image_url)
  end
end
