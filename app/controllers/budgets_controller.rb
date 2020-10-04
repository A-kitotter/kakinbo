class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]

  # GET /budgets
  # GET /budgets.json
  def index
    @content = Content.all
    @budgets = Budget.all
  end

  # GET /budgets/1
  # GET /budgets/1.json
  def show
  end

  # GET /budgets/new
  def new
    @content = Content.all.order(:name)
    @d = Date.today
    @year = @d.year.to_i
    @month = @d.month.to_i
    @budget = Budget.new
  end
  
  # POST /budgets
  # POST /budgets.json
  def create
    @content = Content.all
    @budget = Budget.new(budget_params)
    respond_to do |format|
      if @budget.save
        format.html { redirect_to root_path, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
      else
        format.html { render :new }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budget_params
      params.require(:budget).permit(:b_year, :b_month, :b_money, :content_id, :b_comment)
    end
end
