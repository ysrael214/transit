  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 1/28/2019 - Sean Chan - Initial File
  # 1.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment block for detailed information regarding the software.

  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

  # This creates an ApplicationController for the Commuters.

class CommutersController < ApplicationController
  def show
    @commuter = Commuter.find(params[:id])
  end
  def new
    @commuter = Commuter.new
  end
  def create
    @commuter = Commuter.new(user_params)
    if @commuter.save
      log_in(@commuter)
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
