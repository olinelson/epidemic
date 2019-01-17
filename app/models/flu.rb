class Flu < ApplicationRecord
    has_many :victims

    validates :nickname, presence: true
    validates :strain, uniqueness: true
end
