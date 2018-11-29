class Org < ApplicationRecord
    has_many :comments
    has_many :ratings
    validates :rating, format: { with: /\A[0-5]\z/, message: "Integer only. No sign allowed." }
end
