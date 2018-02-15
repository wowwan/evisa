# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Purpose.create(name: "tourism", desc: "For tourism")
Purpose.create(name: "business", desc: "For tourism")
  
Visa.create(title: "1 month single entry tourism",short_desc: "1 month single entry", long_desc: "", price: 20, purpose_id: Purpose.find_by(name: "tourism").id)
Visa.create(title: "1 month multiply entry tourism",short_desc: "1 month multiply entry", long_desc: "", price: 25, purpose_id: Purpose.find_by(name: "tourism").id)
Visa.create(title: "3 month single entry tourism",short_desc: "3 month single entry", long_desc: "", price: 40, purpose_id: Purpose.find_by(name: "tourism").id)
Visa.create(title: "3 month multiply entry tourism",short_desc: "3 month multiply entry", long_desc: "", price: 45, purpose_id: Purpose.find_by(name: "tourism").id)
Visa.create(title: "1 month single entry business",short_desc: "1 month single entry", long_desc: "", price: 35, purpose_id: Purpose.find_by(name: "business").id)
Visa.create(title: "1 month multiply entry business",short_desc: "1 month multiply entry", long_desc: "", price: 40, purpose_id: Purpose.find_by(name: "business").id)
Visa.create(title: "3 month single entry business",short_desc: "3 month single entry", long_desc: "", price: 65, purpose_id: Purpose.find_by(name: "business").id)
Visa.create(title: "3 month multiply entry business",short_desc: "3 month multiply entry", long_desc: "", price: 80, purpose_id: Purpose.find_by(name: "business").id)
Visa.create(title: "6 month multiply entry business",short_desc: "6 month multiply entry", long_desc: "", price: 190, purpose_id: Purpose.find_by(name: "business").id)
Visa.create(title: "12 month multiply entry business",short_desc: "12 month multiply entry", long_desc: "", price: 350, purpose_id: Purpose.find_by(name: "business").id)
