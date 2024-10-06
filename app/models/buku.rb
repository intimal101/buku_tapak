class Buku < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
