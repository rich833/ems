class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :business
      t.string :number
      t.string :street
      t.string :city
      t.string :county
      t.string :postcode
      t.string :mobile
      t.string :landline
      t.string :fax
      t.string :job_description
      t.string :sector
      t.string :website

      t.timestamps
    end
  end
end
