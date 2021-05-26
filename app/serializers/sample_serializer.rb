class SampleSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :note, :shared, :user_id, :sample_url

  def sample_url
    object.sample.url
  end
end
