class TwoController < ApplicationController
  def index

    @names = ['Петя', 'Алина', 'Вася', 'Никита', 'Оля', 'Ваня', 'Саша', 'Кирилл', 'Вася']

    @users = [
      {lastName: 'Королев', role: 'admin'}, 
      {lastName: 'Шевченко', role: 'user'}, 
      {lastName: 'Иванов', role: 'user'}, 
      {lastName: 'Петров', role: 'user'}
    ]

    @admins = @users.select { |user| user[:role] == 'admin' }
    @notadmins = @users.select { |user| user[:role] == 'user' }

    @countries = [
      {'Россия' => ['Ростов-на-Дону', 'Москва', 'Санкт-Петербург', 'Томск']},
      {'Германия' => ['Берлин', 'Мюнхен', 'Гамбург', 'Дрезден']},
      {'Италия' => ['Рим', 'Неаполь', 'Венеция', 'Флоренция']}
    ]

    @employees = [
        {firstName: 'Александр', lastName: 'Новиков', age: 35, address: 'ул. Ленина 99', phone: '125-89-63', money: 5000},
        {firstName: 'Александр', lastName: 'Бодров', age: 28, address: 'пр. Ворошиловский 61', phone: '256-89-63', money: 5500},
        {firstName: 'Николай', lastName: 'Хмельницкий', age: 28, address: 'ул. Социалистическая 25', phone: '100-89-63', money: 10000},
        {firstName: 'Олег', lastName: 'Нестеров', age: 44, address: 'ул. Петровка 11', phone: '330-89-63', money: 4998},
    ]

  end
end
