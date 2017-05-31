class AddTeamsToMatches < ActiveRecord::Migration[5.1]
  def change
    add_reference :matches, :local_team, foreign_key: true
    add_reference :matches, :visitor_team, foreign_key: true
  end
end
