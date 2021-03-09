class CreateSamples < ActiveRecord::Migration[6.1]
  def change
    create_table :samples do |t|
      t.string :title
      t.string :date
      t.string :note
      t.string :shared
      t.text :audio_data


      t.timestamps
    end
  end
end
