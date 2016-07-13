class ChangeColumnContryToCountry < ActiveRecord::Migration
  def change
    rename_column :events, :address_contry, :address_country
  end
end
