class IndexPageController < ApplicationController
  def show
    @d = Date.today
    @month = @d.month

    @content = Content.all
    @budgets = Budget.where(b_month: @month)
    @performances = Performance.where(p_month: @month)

    @this_month_budgets = @budgets.sum(:b_money)
    @this_month_performances = @performances.sum(:p_money)
  end
end
