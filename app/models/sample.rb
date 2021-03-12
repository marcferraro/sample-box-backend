class Sample < ApplicationRecord
    belongs_to :user
    has_many :sample_tags
    has_many :tags, through: :sample_tags

    has_one_attached :sample
end
