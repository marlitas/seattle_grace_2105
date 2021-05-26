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
    hospitals.map do |hospital|
      hospital.doctors
    end
    # hospital.doctors.map do |doctor|
    #       {doctor.name => doctor.salary}
    # end
  end
end
