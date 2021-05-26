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
    @sorted_by_hospital = {@hospitals[0] => @hospitals[0].doctors.map do |doctor|
    doctor.name
    end}
    @sorted_by_hospital[@hospitals[1]] = @hospitals[1].doctors.map do |doctor|
      doctor.name
    end
    return @sorted_by_hospital
  end

  def doctors_by_specialty
    @sorted_by_specialty = @hospitals.specialties.each do |specialty|

    end
  end

  def average_doctors_salary
    @hospitals.sum do |hospital|
      hospital.total_salary / hospital.doctors.length
    end
  end
end
