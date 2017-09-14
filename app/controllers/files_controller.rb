# Managing, getting, editing, uploading files from/to user library
class FilesController < ApplicationController
  def download; end

  def upload; end

  def update; end

  def destroy; end

  private

  def file_params
    params.require(:cloud_file).permit(:name, :folder_id, :file)
  end

  def file
    @file ||= current_library.files.find(params[:id])
  end
end
