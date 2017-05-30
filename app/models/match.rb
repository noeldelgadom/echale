class Match < ApplicationRecord
  belongs_to :local, class_name: :team
  belongs_to :visitor, class_name: :team
  has_many :teams
end
