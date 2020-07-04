class AddBadgeToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :badge, :text
  end
end
