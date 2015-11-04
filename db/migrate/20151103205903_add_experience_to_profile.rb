class AddExperienceToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :experience, :integer
  end
end
