class Complain
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  field :locale, type: String
  field :company, type: String

  validates :title, presence: true
  validates :description, presence: true
  validates :locale, presence: true
  validates :company, presence: true
end
