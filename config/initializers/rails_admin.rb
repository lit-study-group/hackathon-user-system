RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    hidden_fields = [:reset_password_token, :reset_password_sent_at,
        :last_sign_in_ip, :last_sign_in_at, :current_sign_in_ip, :current_sign_in_at,
        :remember_created_at, :password_confirmation, :sign_in_count]
    list do
      exclude_fields(*hidden_fields)
    end
    edit do
      exclude_fields(*hidden_fields)
    end
  end

end
