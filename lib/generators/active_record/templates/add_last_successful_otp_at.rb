class DeviseTwoFactorAddLastSuccessfulOtpAtTo<%= table_name.camelize %> < <%= @migration_class_name %>
  def self.up
    change_table :<%= table_name %> do |t|
      t.datetime :otp_last_success
    end
  end

  def self.down
    change_table :<%= table_name %> do |t|
      t.remove :last_successful_otp_at
    end
  end
end

