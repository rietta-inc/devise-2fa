# frozen_string_literal: true

require 'rails/generators/active_record'

module DeviseTwoFactor
  module Generators # :nodoc:
    class MigrationsGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../active_record/templates', __dir__)

      def copy_devise_migration
        migration_template(
          'create_table.rb',
          "db/migrate/devise_2fa_add_to_#{table_name}.rb"
        )
        migration_template(
          'add_last_successful_otp_at.rb',
          "db/migrate/devise_2fa_add_last_successful_to#{table_name}.rb"
        )
      end
    end
  end
end
