class IndexPageController < ApplicationController
  def show
    @d = Date.today
    @month = @d.month

    @content = Content.all
    @budgets = Budget.where(b_month: @month)
    @performances = Performance.where(p_month: @month).order(:p_day)

    @this_month_budgets = @budgets.sum(:b_money)
    @this_month_performances = @performances.sum(:p_money)

    @content_b = @budgets.eager_load(:content).group(:'contents.name').sum(:b_money).sort_by { |_, v| -v }.to_h
    @content_p = @performances.eager_load(:content).group(:'contents.name').sum(:p_money).sort_by { |_, v| -v }.to_h
    

    all_contents = (@content_b.keys + @content_p.keys).uniq
    content_max = all_contents.max
    @data = []
    num = 0

    all_contents.each do |content|
      @data << {
        name: content, 
        data: [["予算", @content_b[content]], ["課金", @content_p[content]]]
      }
    end
  end
end
