class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :title
      t.string :last_name

      t.timestamps null: false
    end
  end
end