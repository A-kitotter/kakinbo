class PerformancesController < ApplicationController
  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  # GET /performances
  # GET /performances.json
  def index
    @content = Content.all
    @performances = Performance.all
  end

  # GET /performances/1
  # GET /performances/1.json
  def show
  end

  # GET /performances/new
  def new
    @content = Content.all
    @d = Date.today
    @year = @d.year.to_i
    @month = @d.month.to_i
    @day = @d.day.to_i
    @performance = Performance.new
  end

  # POST /performances
  # POST /performances.json
  def create
    @content = Content.all
    @d = Date.today
    @year = @d.year.to_i
    @month = @d.month.to_i
    @day = @d.day.to_i

    @performance = Performance.new(performance_params)
    respond_to do |format|
      if @performance.save
        format.html { redirect_to root_path, notice: 'Performance was successfully created.' }
        format.json { render :show, status: :created, location: @performance }
      else
        format.html { render :new }
        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @performance.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance
      @performance = Performance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def performance_params
      params.require(:performance).permit(:p_year, :p_month, :p_day, :p_money, :content_id, :p_comment)
    end
end
