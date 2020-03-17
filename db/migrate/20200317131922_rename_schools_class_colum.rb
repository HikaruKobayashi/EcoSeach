class RenameSchoolsClassColum < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :class, :school_class
  end
end
