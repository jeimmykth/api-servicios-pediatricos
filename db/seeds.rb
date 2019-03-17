# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.create(name: "Psicologia", url_image: "", description: "Psicologia Descripción")
Service.create(name: "Nutrición y dietetico", url_image: "", description: "Nutrición y dietetico Descripción")
Service.create(name: "Procedimientos menores", url_image: "", description: "Procedimientos menores Descripción")
Service.create(name: "Transporte asistencial básico", url_image: "", description: "Transporte asistencial básico Descripción")
Service.create(name: "Fisioterapia", url_image: "", description: "Fisioterapia Descripción")
pri=Service.create(name: "Terapia respiratoria", url_image: "", description: "Terapia respiratoria Descripción")
Service.create(name: "Fonoaudiologia y terapia", url_image: "", description: "Fonoaudiologia y terapia Descripción")
Service.create(name: "Dermatologia", url_image: "", description: "Dermatologia Descripción")
Service.create(name: "Oftalmologia", url_image: "", description: "Oftalmologia Descripción")

user1 = User.create(name:"Julieta",mail:"jeimmykth.@gmail2.com",password:"12455")
user2 = User.create(name:"Danyy",mail:"pillo.@gmail.com",password:"1245fd")

doct=Doctor.create(user_id: user1.id,description:"ghhjjhdgh",url_photo:"dhhhjjk")

Appointment.create(user_id: user2.id,doctor_id: doct.id,service_id: pri.id,date: DateTime.new(2001,2,3,4,30))