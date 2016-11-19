class Zombie < ApplicationRecord
 has_many :assignments
 has_many :roles, through: :assignemnt
end

