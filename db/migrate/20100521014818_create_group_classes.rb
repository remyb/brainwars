class CreateGroupClasses < ActiveRecord::Migration
  def self.up
    create_table :group_classes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :group_classes
  end
end
