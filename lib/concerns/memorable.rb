module Memorable
  module ClassMethods # indicating class methods to be extended

    def reset_all # define method to be exteded to class(es)
      self.all.clear 
    end

    def count # define method to be exteded to class(es)
      self.all.count
    end
  end
  module InstanceMethods
    
    def initialize
      self.class.all << self 
    end
  end
  
end