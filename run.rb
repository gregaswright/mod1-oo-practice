require 'pry'
require_relative  './app/models/doctor.rb'
require_relative  './app/models/patient.rb'


barns = Doctor.new("Dr. Barns", "Bones")
edger = Doctor.new("Dr. Edger", "Eye Lash", 4) 
peters = Doctor.new("Dr. Peters", "Elbow Skin", 2)
jones = Doctor.new("Dr. Jones", "Elbow Skin", 4)

jim = Patient.new("Jim", 25)
sarah = Patient.new("Sarah", 15)
tom = Patient.new("Tom", 45)

binding.pry