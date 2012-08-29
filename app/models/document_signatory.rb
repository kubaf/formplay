class DocumentSignatory < ActiveRecord::Base
  attr_accessible :signatory_type, :signatory_attributes
  
  belongs_to :document
  #belongs_to :person, :dependent => :destroy
  belongs_to :signatory, :class_name=>"Person", :foreign_key=>"person_id", :dependent => :destroy
  
  accepts_nested_attributes_for :signatory, :allow_destroy => true
  
end
