class CaseBox < ApplicationRecord
  has_many :skins, dependent: :destroy
end
