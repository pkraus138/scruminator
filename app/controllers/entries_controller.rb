class EntriesController < ApplicationController
  def new
    @entry = user.entries.new
    @date = date
  end

  def edit
    @entry = entry.find(params[id])
    @date = date
  end

  def create
    @entry = user.entries.build(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to user_entries_path(@user), notice: "Entry was successfully created." }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:date, :yesterday, :today, :impediments, :user_id)
  end

  def user
    User.find(params[:user_id])
  end
end
