class Document < ActiveRecord::Base
  attr_accessible :name, :document_signatories_attributes
  
  has_many :document_signatories, :dependent => :destroy
  has_many :signatories, :through=>:document_signatories, :source=>:signatory, :dependent => :destroy
  
  
  accepts_nested_attributes_for :signatories, :allow_destroy => true
  accepts_nested_attributes_for :document_signatories, 
                                :allow_destroy => true
                                
  validates_presence_of :name
  
  validates_associated :document_signatories
  
  validate :must_have_document_signatory_type_and_signatory
  
  # http://stackoverflow.com/questions/5144527/nested-models-and-parent-validation
  def must_have_document_signatory_type_and_signatory
    if self.document_signatories.reject(&:marked_for_destruction?).empty?
      errors.add(:base, 'Must have a valid document signatory')
    end
  end
  
end
