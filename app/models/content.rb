class Content < ApplicationRecord
    has_many :budgets
    has_many :performances
    validates :name, presence: true, uniqueness: { case_sensitive: false }
end
