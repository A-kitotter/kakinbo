class Content < ApplicationRecord
    has_many :budgets
    has_many :performances
    belongs_to :user
    validates :name, presence: true, uniqueness: { case_sensitive: false }
end
