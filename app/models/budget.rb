class Budget < ApplicationRecord
    belongs_to :content
    validates :b_year, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
    validates :b_month, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
    validates :content_id, presence: true
    validates :b_money, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
end
