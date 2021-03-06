unless PluginRoutes.static_system_info['user_model'].present?
  class CamaleonCms::User < ActiveRecord::Base
    include CamaleonCms::UserMethods
    self.table_name = PluginRoutes.static_system_info["cama_users_db_table"] || "#{PluginRoutes.static_system_info["db_prefix"]}users"
    # attr_accessible :username, :role, :email, :parent_id, :last_login_at, :site_id, :password, :password_confirmation, :first_name, :last_name #, :profile_attributes
    # attr_accessible :is_valid_email

    default_scope {order("#{CamaleonCms::User.table_name}.role ASC")}
  end
end