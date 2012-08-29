class CreateDocumentSignatories < ActiveRecord::Migration
  def change
    create_table :document_signatories do |t|
      t.integer :document_id
      t.integer :person_id
      t.string :type

      t.timestamps
    end
  end
end
