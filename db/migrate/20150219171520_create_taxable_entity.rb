class CreateTaxableEntity < ActiveRecord::Migration
  
  def up
    execute 'CREATE EXTENSION IF NOT EXISTS hstore'
    
    create_table :taxable_entities do |t|
      t.string :name
      t.string :country
      t.decimal :income, precision: 11, scale: 2
      t.hstore :localities, default: {}
      t.hstore :store, default: {}
    end
  end
  
  def down
    drop_table :taxable_entities
  end
  
end
