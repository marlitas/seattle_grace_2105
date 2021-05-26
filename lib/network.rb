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
    hospitals.each do |hospital|
      @highest_paid = hospital.doctors.max_by do |doctor|
        doctor.salary
      end
    end
    @highest_paid
  end

  def doctors_by_hospital
    @sorted_by_hospital = {}
    @hospitals.each do |hospital|
      @sorted_by_hospital[hospital] = hospital.doctors.map do |doctor|
        doctor.name
      end
    end
    return @sorted_by_hospital
  end

  def doctors_by_specialty
    
    @hospitals.each do |hospital|
      hospital.doctors each do |doctor|
        if doctor
      end
    end
  end

  def average_doctors_salary
    (@hospitals.sum do |hospital|
      hospital.total_salary / hospital.doctors.length
    end) / @hospitals.length
  end
  end
end
