class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :local
      t.string :visitor
      t.datetime :kickoff

      t.timestamps
    end
  end
end
