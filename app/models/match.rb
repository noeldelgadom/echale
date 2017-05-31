class Match < ApplicationRecord
  belongs_to :local_team, class_name: 'Team', foreign_key: :local_team_id, required: true
  belongs_to :visitor_team, class_name: 'Team', foreign_key: :visitor_team_id, required: true
end
