class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    Category.create(:name => 'Style')
    Category.create(:name => 'Kids')
    Category.create(:name => 'Home')
    Category.create(:name => 'Treats')

    add_column :posts, :category_id, :integer
  end

  def self.down
    drop_table :categories
  end
end
