# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"


CSV.foreach('db/poemy.csv',headers: :first_row, skip_blanks: true) do |row|

  Poem.create(:foreword => row[1],
  				 :beginning => row[2],
  				 :poem => row[3],
  				 image: File.open("./app/assets/images/#{row[0]}.jpg"),
  				 :meaning => row[5],
  				 :author => row[6],
  				 :remark => row[7],
           
  				 )
  Tag.create(:tag => row[8],
  			 :poem_id => row[0],
  				)
  Tag.create(:tag => row[9],
  			 :poem_id => row[0],
  				)
  Tag.create(:tag => row[10],
  			 :poem_id => row[0],
  				)
  Tag.create(:tag => row[11],
  			 :poem_id => row[0],
  				)
end