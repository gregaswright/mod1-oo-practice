require 'pry'
require_relative  './app/models/appointment.rb'
require_relative  './app/models/doctor.rb'
require_relative  './app/models/patient.rb'


barns = Doctor.new("Dr. Barns", "Bones")
edger = Doctor.new("Dr. Edger", "Eye Lash", 4) 
peters = Doctor.new("Dr. Peters", "Elbow Skin", 2)
jones = Doctor.new("Dr. Jones", "Elbow Skin", 4)

jim = Patient.new("Jim", 25)
sarah = Patient.new("Sarah", 15)
tom = Patient.new("Tom", 45)
jon = Patient.new("Jon", 22)
bill = Patient.new("Bill", 60)
steph = Patient.new("Steph", 40)
jill = Patient.new("Jill", 45)

a1 = Appointment.new(barns, jim)
a2 = Appointment.new(barns, sarah)
a3 = Appointment.new(edger, jim)
a4 = Appointment.new(edger, tom)
a5 = Appointment.new(peters, bill)
a6 = Appointment.new(peters, sarah)
a7 = Appointment.new(peters, jon)
a8 = Appointment.new(jones, steph)
a9 = Appointment.new(jones, jill)
a10 = Appointment.new(jones, jim) 

binding.pry