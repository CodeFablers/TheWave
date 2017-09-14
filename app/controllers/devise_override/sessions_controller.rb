module DeviseOverride
  # Helps user to complete registration by email confirmation
  class SessionsController < Devise::SessionsController
    private

    def after_sign_in_path_for(resource)
      library_path(resource.own_library)
    end
  end
end
