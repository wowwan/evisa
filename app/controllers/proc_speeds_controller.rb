class ProcSpeedsController < ApplicationController
  before_action :set_proc_speed, only: [:show, :edit, :update, :destroy]

  # GET /proc_speeds
  # GET /proc_speeds.json
  def index
    @proc_speeds = ProcSpeed.all
  end

  # GET /proc_speeds/1
  # GET /proc_speeds/1.json
  def show
  end

  # GET /proc_speeds/new
  def new
    @proc_speed = ProcSpeed.new
  end

  # GET /proc_speeds/1/edit
  def edit
  end

  # POST /proc_speeds
  # POST /proc_speeds.json
  def create
    @proc_speed = ProcSpeed.new(proc_speed_params)

    respond_to do |format|
      if @proc_speed.save
        format.html { redirect_to @proc_speed, notice: 'Proc speed was successfully created.' }
        format.json { render :show, status: :created, location: @proc_speed }
      else
        format.html { render :new }
        format.json { render json: @proc_speed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proc_speeds/1
  # PATCH/PUT /proc_speeds/1.json
  def update
    respond_to do |format|
      if @proc_speed.update(proc_speed_params)
        format.html { redirect_to @proc_speed, notice: 'Proc speed was successfully updated.' }
        format.json { render :show, status: :ok, location: @proc_speed }
      else
        format.html { render :edit }
        format.json { render json: @proc_speed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proc_speeds/1
  # DELETE /proc_speeds/1.json
  def destroy
    @proc_speed.destroy
    respond_to do |format|
      format.html { redirect_to proc_speeds_url, notice: 'Proc speed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proc_speed
      @proc_speed = ProcSpeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proc_speed_params
      params.require(:proc_speed).permit(:order_id, :short_desc, :long_desc, :price)
    end
end
