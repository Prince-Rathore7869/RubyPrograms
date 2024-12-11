module Tools        #Creating the module 

    def sayHi(name)
        puts "Hello #{name}"
    end
    def sayBye(name)
        puts "Bye #{name}"
    end
end

#include Tools                  #have to use the => include keyword and module name 

#Tools.sayHi("Prince Singh")     #By using module name, we can acces any method inside module
#Tools.sayBye("Prince Singh")  