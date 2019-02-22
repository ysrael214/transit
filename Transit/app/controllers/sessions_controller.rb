  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/9/2019 - Sean Chan - Initial File
  # 1.1 - 2/20/2019 - Sean Chan - Implemented Login and Signup Functions

  # File Creation Date: 2/9/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

class SessionsController < ApplicationController
  def new
  end

  def destroy
  end

  def create
    # Creation of account
    # If successful, redirects to the commuters (temporarily)
    # Will fix this on one of the coming sprints
    commuter = Commuter.find_by(email: params[:session][:email])
    if commuter && commuter.authenticate(params[:session][:password])
      log_in(commuter)
      redirect_to commuter
    else
      # Error Message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
