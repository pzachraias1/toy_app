class User < ApplicationRecord
    has_many :micropst
    validates :name, presence: true
    validates :email, presence: true
end
