class IndexPageController < ApplicationController
  def index
    @d = Date.today
    @month = @d.month

    @content = Content.all
    @budgets = Budget.where(b_month: @month)
    @performances = Performance.where(p_month: @month).order(:p_day)

    @this_month_budgets = @budgets.sum(:b_money)
    @this_month_performances = @performances.sum(:p_money)

    #postgreでエラーが出るので、groupの部分を書き換える
    #一度content_idで集計して、eachループでコンテンツ名に差し替える方式
    @content_b = @budgets.pluck(:content_id, :b_money).to_h
    @content_p = @performances.pluck(:content_id, :p_money).to_h

    all_contents = (@content_b.keys + @content_p.keys).uniq
    content_max = all_contents.max
    @data = []
    num = 0

    all_contents.each do |content|
      @data << {
        name: Content.find(content).name, 
        data: [["予算", @content_b[content]], ["課金額", @content_p[content]]]
      }
    end
  end
end
