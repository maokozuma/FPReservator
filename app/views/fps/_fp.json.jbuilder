json.extract! fp, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url fp_url(fp, format: :json)
