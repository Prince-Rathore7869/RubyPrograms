class Student
    
    attr_accessor :name, :rollno, :marks
    def initialize(name,rollno,marks)
        @name=name;
        @rollno=rollno;
        @marks=marks;
    end

    def pass
        if @marks>=33
            puts("You passed the exam")
        else
            puts("you are failed")
        end
    end
end

 student1=Student.new("Prince Singh",01,60)
 student2=Student.new("Raj Singh",02,32)
 
 puts student1.rollno
 puts student1.pass
 