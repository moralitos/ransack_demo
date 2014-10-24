# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

role = Role.create(name: 'restricted')
role2 = Role.create(name: 'admin')

user = User.create(email: 'user1_restricted@o.com')
user2 = User.create(email: 'user2_admin@o.com')

user.roles << role
user.roles << role2

project = user.projects.create(name: "Africa")
project2 = user.projects.create(name: "Australia")
project3 = user2.projects.create(name: "America")
project4 = user2.projects.create(name: "Europe")

ProjectAdministration.create(project_id: project.id, hours: 20, status: 'in_progress')
ProjectAdministration.create(project_id: project2.id, hours: 20, status: 'completed')
ProjectAdministration.create(project_id: project3.id, hours: 10, status: 'completed')
ProjectAdministration.create(project_id: project4.id, hours: 3, status: 'in_progress')

