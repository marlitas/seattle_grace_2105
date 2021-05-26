class Hospital
  attr_reader :name, :chief_of_surgery, :doctors
  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    @doctors.sum do |doctor|
      doctor.salary
    end
  end

  def lowest_paid_doctor
    lowest_paid = @doctors.min_by do |doctor|
      @doctor.salary
    end
    lowest_paid.name
  end

  def specialties
    @doctors.map do |doctor|
      doctor.specialty
    end
  end
end
