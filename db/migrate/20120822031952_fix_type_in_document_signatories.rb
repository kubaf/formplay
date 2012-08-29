class FixTypeInDocumentSignatories < ActiveRecord::Migration
  def change
    rename_column :document_signatories, :type, :signatory_type
  end
end
