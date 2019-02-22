  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/9/2019 - Sean Chan - Initial File
  # 1.1 - 2/20/2019 - Sean Chan - Added Commuter methods for login/signup functions
  # 1.2 - 2/22/2019 - Michael Marrero - Added Licensure and Comments

  # File Creation Date: 2/9/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

  # This creates an ApplicationController for the Commuters.

class CommutersController < ApplicationController
  # GET /commuters/1
  # Methods that are executed when showing a commuter's profile
  def show
    @commuter = Commuter.find(params[:id])
  end

  # GET /signup
  # Methods that are executed when trying to create a new commuter account
  def new
    @commuter = Commuter.new
  end

  # POST /signup
  # Methods that are executed when creating a new commuter account
  def create
    @commuter = Commuter.new(user_params)
    if @commuter.save
      flash[:success] = "Welcome to Transit!"
      redirect_to @commuter
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:commuter).permit(:name, :email, :password, :password_confirmation)
    end
end
