class Sample < ApplicationRecord
    belongs_to :user
    has_many :sample_tags
    has_many :tags, through: :sample_tags

    include AudioUploader::Attachment(:audio)
end
