class InfoAdherent < ApplicationRecord
  belongs_to :adherents

  validates :nom, presence: true
  validates :prenom, presence: true

  validates :telephone, presence: true
  validates :mail, presence: true

  validates :adresse, presence: true
  validates :codepostal, presence: true
  validates :ville, presence: true
end
