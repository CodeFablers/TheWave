# Managing, editing user library
class FoldersController < ApplicationController
  def show
    @folder = folder.preload(:children, :files)
  end

  def create; end

  def update; end

  def destroy; end

  private

  def folder_params
    params.require(:folder).permit(:name, :parent_id)
  end

  helper_method :folder
  def folder
    @folder ||= current_library.folders.find(params[:id])
  end
end
