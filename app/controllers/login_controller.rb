class LoginController < ApplicationController

  @@users = [
    { email: 'user1@example.com', plainpassword: 'user1@example.com' },
    { email: 'user2@example.com', plainpassword: 'user2@example.com' },
    { email: 'user3@example.com', plainpassword: 'user3@example.com' },
  ]

  @selectOptions = [
   ['user1@example.com', 'user1@example.com'],
   ['user2@example.com', 'user2@example.com'],
   ['user3@example.com', 'user3@example.com'],
  ]

  def index
    puts @selectOptions
    email = params[:email]
    password = params[:plainpassword]

    @@users.map do |user| 
      
      if password == user[:plainpassword] and email == user[:email] 
        redirect_to test_test_url
      end

    end

  end

  def login
  end
end
