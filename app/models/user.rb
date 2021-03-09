class User < ApplicationRecord
    has_many :samples

    validates :username, uniqueness: true
end
