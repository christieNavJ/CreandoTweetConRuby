class Tweet < ActiveRecord::Base



Twitter.configure do |config|
  config.consumer_key = 'GJ0LbVpAHg2CIdFx6A0Mw'
  config.consumer_secret = 'DvV36X6GLGJbiCSlWjhhZrmLEOrxeSI0PGYaKkWHqVY'
  config.oauth_token = '512508668-6wsoqlbrosGS7v3ufwsAMOmLjStPOsnpWIpKCudU'
  config.oauth_token_secret = 'p7bZ8Ii3YoxsDRnACMJAlho3IKB59pCixu4LD5oSX0Q'
end

def read_text
	return "sin status" if self.status.blank?
Twitter.status(self.status).text
end

def read_message
 return "sin_user" if self.user.blank?
 Twitter.user_timeline(self.user).first.text
end

 def update_status
    return "sin update" if self.status.blank?
    Twitter.update(self.status)
  end

end
