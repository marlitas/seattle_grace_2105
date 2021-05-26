class Network
  attr_reader :name, :hospitals
  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    combined_doctors = @hospitals.map do |hospital|
      hospital.doctors
    end.flatten
    combined_doctors.max_by do |doctor|
        doctor.salary
    end
  end

  def doctors_by_hospital
    sorted_by_hospital = {}
    @hospitals.each do |hospital|
      sorted_by_hospital[hospital] = hospital.doctors.map do |doctor|
        doctor.name
      end
    end
    return sorted_by_hospital
  end

  def doctors_by_specialty
    combined_doctors = @hospitals.map do |hospital|
      hospital.doctors
    end.flatten
    specialties = @hospitals.map do |hospital|
      hospital.specialties
    end.flatten.uniq
    sorted_by_specialty = {}
    specialties.each do |specialty|
      sorted_by_specialty[specialty] = []
    end
    #require 'pry'; binding.pry
    combined_doctors.each do |doctor|
      if doctor.specialty == 'General Surgery'
        sorted_by_specialty['General Surgery'] << doctor.name
      elsif doctor.specialty == 'Pediatric Surgery'
        sorted_by_specialty['Pediatric Surgery'] << doctor.name
      elsif doctor.specialty == 'Neurosurgery'
        sorted_by_specialty['Neurosurgery'] << doctor.name
      end
    end
    sorted_by_specialty
    # require 'pry'; binding.pry
  end

  def average_doctors_salary
    (@hospitals.sum do |hospital|
      hospital.total_salary / hospital.doctors.length
    end) / @hospitals.length
  end
end
