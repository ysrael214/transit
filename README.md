# Transit
Transit is a web application that ysrael214, seanryanchan, and Mio have made for their Computer Science 191 Software Engineering I Course in UP Diliman.

# Code Protocols
Tab Size: 2 spaces


# Application Stack
Ruby on Rails Framework

# Code Review - Code History Format
`<Version Number> - <Date MM/DD/YY> - <Name> - <1 sentence description>`
  ex.

  1.0 - 02/07/19 - Sean - First new file

  1.1 - 02/08/19 - Menard - Front end!

  2.0 - 02/08/19 - Michael - Put licenses and polished code

# Setting Up Rails Server on Local Machine
`rails db:drop`

execute: `rails db:schema:load`

`rails db:seed`

# Deploying on Heroku Service (Remote Server)
[This is the Git Repository for the Live Heroku Version. Clone this repo and then run the following commands.]https://github.com/seanryanchan/transit-heroku

`heroku create`

`git remote add heroku <heroku_git_name>`

`git push heroku`

`heroku open`
