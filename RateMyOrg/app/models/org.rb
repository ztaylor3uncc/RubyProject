class Org < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :ratings
end
