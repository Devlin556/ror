class TwoController < ApplicationController
  def index

    @names = ['Петя', 'Алина', 'Вася', 'Никита', 'Оля', 'Ваня', 'Саша', 'Кирилл', 'Вася']

    @users = [{lastName: 'Королев', role: 'admin'}, {lastName: 'Шевченко', role: 'user'}, {lastName: 'Иванов', role: 'user'}, {lastName: 'Петров', role: 'user'}]

  end
end
