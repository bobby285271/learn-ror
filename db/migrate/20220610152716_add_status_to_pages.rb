class AddStatusToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :status, :string
  end
end
