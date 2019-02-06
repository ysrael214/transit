class TransitLinesController < ApplicationController
  before_action :set_transit_line, only: [:show, :edit, :update, :destroy]

  # GET /transit_lines
  # GET /transit_lines.json
  def index
    @transit_lines = TransitLine.all
  end

  # GET /transit_lines/1
  # GET /transit_lines/1.json
  def show
  end

  # GET /transit_lines/new
  def new
    @transit_line = TransitLine.new
  end

  # GET /transit_lines/1/edit
  def edit
  end

  # POST /transit_lines
  # POST /transit_lines.json
  def create
    @transit_line = TransitLine.new(transit_line_params)

    respond_to do |format|
      if @transit_line.save
        format.html { redirect_to @transit_line, notice: 'Transit line was successfully created.' }
        format.json { render :show, status: :created, location: @transit_line }
      else
        format.html { render :new }
        format.json { render json: @transit_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_lines/1
  # PATCH/PUT /transit_lines/1.json
  def update
    respond_to do |format|
      if @transit_line.update(transit_line_params)
        format.html { redirect_to @transit_line, notice: 'Transit line was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_line }
      else
        format.html { render :edit }
        format.json { render json: @transit_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_lines/1
  # DELETE /transit_lines/1.json
  def destroy
    @transit_line.destroy
    respond_to do |format|
      format.html { redirect_to transit_lines_url, notice: 'Transit line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transit_line
      @transit_line = TransitLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transit_line_params
      params.require(:transit_line).permit(:status, :operating_hours, :type, :restrictions, :reliability, :name, :avg_price)
    end
end
