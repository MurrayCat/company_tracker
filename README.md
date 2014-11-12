#README
A ruby on rails application that helps you keep track of all the branches in your company.

Getting started:
#1) Terminal commands (Start here)
#Install the  gems
bundle install
#Create the databases
rake db:create
#Run migrations
rake db:migrate
#Run guard for tests
bundle exec guard
#Start the server
rails s
#2) Using the app

#Start the server:
rails s
Go to:
http://0.0.0.0:3000

#Sign in

You can't add , delete or edit unless you have logged in because of a gem I installed called devise.

You can try but it will take you to the login page or you can go to /users/sign_in and login or sign up.

#Add Edit Delete Show
Once logged in you can create as many companies with as many branches as you like.

Branches are dependant on companies so if you delete a company all of it's branches are deleted to. 

You can update companies or branches but clicking on the edit link.

You can view all of a companies branches on it's show page.
