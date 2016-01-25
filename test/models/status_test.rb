require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  
  test "una propuesta requiere contenido" do 

   status = Status.new
   assert !status.save
   assert !status.errors[:contenido].empty?
  	
  end

test "cada propuesta debe contener al menos dos letras" do 
    status = Status.new
    status.contenido = "8"
    assert !status.save
    assert !status.errors[:contenido].empty?
end

test "cada propuesta debe tener un user id" do 
	 status = Status.new
    status.contenido = "Hola Mundo"
    assert !status.save
    assert !status.errors[:user_id].empty?

   end

end