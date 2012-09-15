class Person < ActiveRecord::Base
  attr_accessible :name
  
  has_many :documents, :through=>:document_signatories
  has_many :document_signatories
  
  accepts_nested_attributes_for :document_signatories
  
  validates_presence_of :name
  
  validates_uniqueness_of :name
end
