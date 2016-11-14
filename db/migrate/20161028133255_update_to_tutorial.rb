class UpdateToTutorial < ActiveRecord::Migration[5.0]
  def up
    change_column("subjects", "visible", :boolean, :default => false)
    change_column("pages", "visible", :boolean, :default => false)
    change_column("sections", "visible", :boolean, :default => false)

    add_index("pages", "permalink")
  end
  def down
    remove_index("pages", "permalink")
    change_column("sections", "visible", :boolean)
    change_column("pages", "visible", :boolean)
    change_column("subjects", "visible", :boolean)
  end
end