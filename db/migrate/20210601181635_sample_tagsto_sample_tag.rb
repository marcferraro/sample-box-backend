class SampleTagstoSampleTag < ActiveRecord::Migration[6.1]
  def change
    rename_table :sample_tags, :sample_tag
  end
end
