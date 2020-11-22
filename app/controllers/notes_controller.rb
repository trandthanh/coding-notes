class NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if @note.save
      params[:note][:tag].each do |tag|
        user_tag = @user_tags.find_or_create_by(name: tag)
        NoteTag.create(tag: user_tag, note: @note)
      end
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
