class CreateSampleTags < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_tags do |t|
      t.integer :sample_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
