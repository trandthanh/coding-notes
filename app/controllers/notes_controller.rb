class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update]

  def show
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

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    # do something for tags
    redirect_to note_path(@note)
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content, :note_taken_on, tag: [])
  end
end
