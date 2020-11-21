class NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if @note.save
      redirect_to note_path(@note)
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :content, :note_taken_on)
  end
end
