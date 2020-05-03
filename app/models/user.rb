class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :restaurants, through: :lists 

    validates :username, uniqueness: true
    validates :username, presence: true

end
 