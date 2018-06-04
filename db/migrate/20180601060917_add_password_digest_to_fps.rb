class AddPasswordDigestToFps < ActiveRecord::Migration[5.2]
  def change
    add_column :fps, :password_digest, :string
  end
end
