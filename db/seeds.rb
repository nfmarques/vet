# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
  # CÃES
  Race.create(description: 'Basset Azul da Gasconha')
  Race.create(description: 'Basset Fulvo da Bretanha')
  Race.create(description: 'Basset Hound')
  Race.create(description: 'Beagle')
  Race.create(description: 'Bearded Collie')
  Race.create(description: 'Bichon Maltês')
  Race.create(description: 'Bobtail')
  Race.create(description: 'Border Collie')
  Race.create(description: 'Boston Terrier')
  Race.create(description: 'Boxer')
  Race.create(description: 'Bull Terrier')
  Race.create(description: 'Bullmastiff')
  Race.create(description: 'Bulldog')

  # GATOS
  Race.create(description: 'Abissínio')
  Race.create(description: 'Angorá')
  Race.create(description: 'Balinês')
  Race.create(description: 'Bengal')
  Race.create(description: 'Bobtail Americano')
  Race.create(description: 'Bombay')
  Race.create(description: 'Burmês')
  Race.create(description: 'Chartreux')
  Race.create(description: 'Cingapura')

  # Tipo de animal
  Category.create(description: 'Cão')
  Category.create(description: 'Gato')
  Category.create(description: 'Exótico')

  # Gajo ou Gaja
  Gender.create(description: 'Maxo')
  Gender.create(description: 'Femea')
=end


=begin
  # User Roles
  Role.create(description: 'admin')
  Role.create(description: 'manager')
  Role.create(description: 'owner')
=end


# Add Admin User
=begin
  admin_role = Role.find_by(description: 'admin')
  User.create(username: 'admin' ,
              email: 'admin@animalcardio.com',
              password: '123qwe',
              password_confirmation: '123qwe',
              first_name: 'admin',
              last_name: '',
              role_id: admin_role.id)
=end