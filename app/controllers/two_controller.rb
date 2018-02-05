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
      {'Германия' => ['Берлин', 'Мюнхен', 'Гамбург', 'Дрезден']}
    ]

  end
end
