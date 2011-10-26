class Books < ActiveRecord::Migration
  def self.up
     create_table :books do |t|
	t.column :title, :string, :limit => 32, :null => false
	t.column :price, :float
	t.column :subject_id, :string
	t.column :description, :text
	t.column :created_at, :timestamp
        t.column :email, :string
     end
  end

  def self.down
    drop_table :books
  end
end
