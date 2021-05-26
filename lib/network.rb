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

  
end
