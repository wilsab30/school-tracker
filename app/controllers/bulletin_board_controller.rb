class BulletinBoardController < ApplicationController
  def index
    @boards =  BulletinBoard.all
  end

  def show
  end
end
