class Tag < ApplicationRecord

    has_many :sample_tags
    has_many :samples, through :sample_tags

end
