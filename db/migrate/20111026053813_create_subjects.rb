class CreateSubjects < ActiveRecord::Migration
  def self.up
  end

  def self.down
    drop_table :subjects
  end
end
