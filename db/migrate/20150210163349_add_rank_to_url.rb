class AddRankToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :rank, :integer, default: 0
  end
end
