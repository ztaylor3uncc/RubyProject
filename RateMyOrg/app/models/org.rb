class Org < ApplicationRecord
    has_many :comments
    has_many :ratings
end
