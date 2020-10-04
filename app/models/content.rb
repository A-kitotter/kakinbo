class Content < ApplicationRecord
    has_many :budgets
    has_many :performances
    validates :name, presence: true
end
