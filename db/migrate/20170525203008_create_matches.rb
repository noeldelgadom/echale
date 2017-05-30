class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.datetime :kickoff

      t.timestamps
    end
  end
end
