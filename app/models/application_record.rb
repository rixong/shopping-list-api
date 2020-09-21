class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def encode_token (payload)
    JWT.encode(payload, 'secret', )
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token ()
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'secret', true, 'HS256')
      rescue
        JWT::DecodeError
        nil
      end
    end
  end

def current_user
  if decoded_token
    user_id = decoded_token[0]['user_id']
    @user = User.find_by(id: user_id)
  end
end

end
