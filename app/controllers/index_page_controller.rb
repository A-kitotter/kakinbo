class IndexPageController < ApplicationController
  def show
    @d = Date.today
    @month = @d.month

    @content = Content.all
    @budgets = Budget.where(b_month: @month)
    @performances = Performance.where(p_month: @month).order(:p_day)

    @this_month_budgets = @budgets.sum(:b_money)
    @this_month_performances = @performances.sum(:p_money)

    @content_b = @budgets.eager_load(:content).group(:'contents.name').sum(:b_money)
    @content_p = @performances.eager_load(:content).group(:'contents.name').sum(:p_money)

    #@dataをループ処理で作成する

    @data = [
      {
        name: @content[0].name, 
        data: [["予算", @content_b[@content[0].name]], ["課金", @content_p[@content[0].name]]]
      },
      {
        name: @content[1].name, 
        data: [["予算", @content_b[@content[1].name]], ["課金", @content_p[@content[1].name]]]
      },
      {
        name: @content[2].name, 
        data: [["予算", @content_b[@content[2].name]], ["課金", @content_p[@content[2].name]]]
      }
    ]
  end
end
