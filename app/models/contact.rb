class Contact < ActiveRecord::Base
  attr_accessible :business, :city, :county, :email, :fax, :first_name, :job_description, :landline, :last_name, :mobile, :number, :postcode, :sector, :street, :website

  geocoded_by :address

  after_validation :geocode

  #EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  #validates :email, :uniqueness => true, :presence => true, :format  => EMAIL_REGEX
  
  def address
    "#{number}, #{street}, #{city}, #{county}, #{postcode}"
  end

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Contact.create! row.to_hash
    end
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |contact|
        csv << contact.attributes.values_at(*column_names)
      end
    end
  end

end
