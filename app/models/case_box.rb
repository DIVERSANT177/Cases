class CaseBox < ApplicationRecord
  has_many :skins, dependent: :destroy

  def random_skin
    skins.sample
  end
end
