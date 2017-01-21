class CreateStylesConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :styles_configs do |t|
      t.string :background_image_url

      t.timestamps
    end
  end
end
