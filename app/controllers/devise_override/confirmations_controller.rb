module DeviseOverride
  # Helps user to complete registration by email confirmation
  class ConfirmationsController < Devise::ConfirmationsController

    # GET /resource/confirmation?confirmation_token=abcdef
    def show
      super

      return unless resource.errors.empty?
      Libraries::CreateScenario.new(resource).perform
    end
  end
end
