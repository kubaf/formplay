class DocumentSignatory < ActiveRecord::Base
  attr_accessible :signatory_type, :signatory_attributes, :person_id
  
  belongs_to :document
  
  # Example of using an alias to a class to define it better in this context
  # In the context of a document signatory a person is actually a signatory
  # as opposed to the context of a person to whom the document belongs, a person 
  # is just a person
  belongs_to :signatory, :class_name=>"Person", :foreign_key=>"person_id", :dependent => :destroy
  
  
  accepts_nested_attributes_for :signatory, 
                                :allow_destroy => true
  
  validates :person_id, :uniqueness => {:scope=>:document_id}
  validates_presence_of :signatory_type  

  validates_associated :signatory

end
