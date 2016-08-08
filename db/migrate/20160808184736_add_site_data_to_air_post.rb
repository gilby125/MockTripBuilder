class AddSiteDataToAirPost < ActiveRecord::Migration
  def change
    add_column :air_posts, :gt_site_name, :string
    add_column :air_posts, :gt_sub_site_name, :string
  end
end
