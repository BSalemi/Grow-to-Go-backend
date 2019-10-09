class ChangeCartsColumn < ActiveRecord::Migration[6.0]
    def up
        change_column :carts, :checkout, :boolean, :default => false
    end
 
    def down
        change_column :carts, :checkout, :boolean, default: nil
    end

end 