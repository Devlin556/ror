class SomeController < ApplicationController
  
  def some
    age = 20
    
    @howManyWorks = if age >= 18 and age <= 59
       "Вам еще работать и работать!"
    elsif age >= 1 and age <= 17
      "Рано еще работать" 
    elsif  age > 59 
      "Пора на пенсию"
    else 
      "Неизвестный возраст"  
    end
    @multiplicationTable = [];
    for i in 1..9
      @multiplicationTable[i-1] = [];
      for j in 1..9
        @multiplicationTable[i-1][j-1] = j * i
      end
    end
    @multiplicationTable.each do |i|
      puts i
    end
  end
end
