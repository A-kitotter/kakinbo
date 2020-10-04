class Performance < ApplicationRecord
    belongs_to :content
    validates :p_year, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
    validates :p_month, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
    validates :p_day, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
    validates :content_id, presence: true
    validates :p_money, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 
end
