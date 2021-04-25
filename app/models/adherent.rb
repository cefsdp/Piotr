class Adherent < ApplicationRecord
  has_one :info_adherent
  has_one :social_adherent
  has_one :fiscal_adherent
  has_one :documents_adherent
  has_one :membre_adherent
end
