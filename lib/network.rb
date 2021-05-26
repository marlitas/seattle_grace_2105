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
    @sorted = {@hospitals[0] => @hospitals[0].doctors.map do |doctor|
    doctor.name
    end}
    @sorted[@hospitals[1]] = @hospitals[1].doctors.map do |doctor|
      doctor.name
    end 
    return @sorted
  end
end
