class Person
  #solution 1 - dynamically set getters and setters 

  #refer to all attributes as a single parameter called attributes then 
  #iterate through this list obtaining its key and using #send method to 
  #call the method name (key) name with an argument (value)

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

  # Solution 2 - without dynamic setters and getters

  # args = attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  # :weight, :handed, :complexion, :t_shirt_size,
  # :wrist_size, :glove_size, :pant_length, :pant_width

  # def initialize(args)
  #   args.each do |key, value|
  #     self.send("#{key}=", value)
  #   end
  # end
end