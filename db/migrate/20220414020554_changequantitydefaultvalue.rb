class Changequantitydefaultvalue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :recipe_foods, :quantity , from: nil, to: 1
  end
end
