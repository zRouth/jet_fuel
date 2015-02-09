class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :full_url
      t.string :slug
      t.string :title

      t.timestamps
    end
  end
end
