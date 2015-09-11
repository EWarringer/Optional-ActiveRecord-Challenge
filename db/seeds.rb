# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

dev1 = Developer.create(name: "John Smith", email: "jsmith@gmail.com", phone_number: "555-555-5555")
dev2 = Developer.create(name: "Shawn O'Malley", email: "somalley@gmail.com", phone_number: "555-555-5555")
dev3 = Developer.create(name: "Erik Warringer", email: "ewarringer@gmail.com", phone_number: "555-555-5555")

app1 = Application.create(github_url: "www.amazon.com", description: "Its awesome")
app2 = Application.create(github_url: "www.amazon.com", description: "Its crappy")
app3 = Application.create(github_url: "www.amazon.com", description: "Its stupid")
app4 = Application.create(github_url: "www.amazon.com", description: "Its ok")
app5 = Application.create(github_url: "www.amazon.com", description: "Its the best new thing!")

Assignment.create(developer: dev1, application: app1)
Assignment.create(developer: dev3, application: app1)
Assignment.create(developer: dev1, application: app3)
Assignment.create(developer: dev2, application: app3)
Assignment.create(developer: dev3, application: app5)
Assignment.create(developer: dev1, application: app2)
Assignment.create(developer: dev3, application: app4)
Assignment.create(developer: dev2, application: app2)
Assignment.create(developer: dev2, application: app4)

Bug.create(title: "Trojan Horse", deadline: Date.new(2015,9,30), developer_id: 2, application: app3)
Bug.create(title: "Evil Email", deadline: Date.new(2015,9,30), application: app1)
Bug.create(title: "Window Opener", deadline: Date.new(2015,9,30), application: app2)
Bug.create(title: "Spam Bot", deadline: Date.new(2015,9,30), developer_id: 1, application: app4)
Bug.create(title: "Crazy URLs", deadline: Date.new(2015,9,30), developer_id: 1, application: app1)
