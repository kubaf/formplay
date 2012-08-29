class Document < ActiveRecord::Base
  attr_accessible :name, :document_signatories_attributes
  
  has_many :document_signatories, :dependent => :destroy
  has_many :signatories, :through=>:document_signatories, :source=>:signatory, :dependent => :destroy
  
  accepts_nested_attributes_for :signatories, :allow_destroy => true
  accepts_nested_attributes_for :document_signatories, :allow_destroy => true
  
end
