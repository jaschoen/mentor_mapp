class AddInfoToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :coach_type, :string
    add_column :profiles, :rating, :integer
    add_column :profiles, :price_low, :integer
    add_column :profiles, :price_high, :integer
    add_column :profiles, :industry, :string
    add_column :profiles, :language, :string
    add_column :profiles, :certification, :string
    add_column :profiles, :skills, :text
  end
end
