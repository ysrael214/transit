class TransitStopsController < ApplicationController
  before_action :set_transit_stop, only: [:show, :edit, :update, :destroy]

  # GET /transit_stops
  # GET /transit_stops.json
  def index
    @transit_stops = TransitStop.all
  end

  # GET /transit_stops/1
  # GET /transit_stops/1.json
  def show
  end

  # GET /transit_stops/new
  def new
    @transit_stop = TransitStop.new
  end

  # GET /transit_stops/1/edit
  def edit
  end

  # POST /transit_stops
  # POST /transit_stops.json
  def create
    @transit_stop = TransitStop.new(transit_stop_params)

    respond_to do |format|
      if @transit_stop.save
        format.html { redirect_to @transit_stop, notice: 'Transit stop was successfully created.' }
        format.json { render :show, status: :created, location: @transit_stop }
      else
        format.html { render :new }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_stops/1
  # PATCH/PUT /transit_stops/1.json
  def update
    respond_to do |format|
      if @transit_stop.update(transit_stop_params)
        format.html { redirect_to @transit_stop, notice: 'Transit stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_stop }
      else
        format.html { render :edit }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_stops/1
  # DELETE /transit_stops/1.json
  def destroy
    @transit_stop.destroy
    respond_to do |format|
      format.html { redirect_to transit_stops_url, notice: 'Transit stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transit_stop
      @transit_stop = TransitStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transit_stop_params
      params.require(:transit_stop).permit(:name, :type, :status, :longitude, :latitude)
    end
end
