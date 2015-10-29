class Contact < MailForm::Base
  attribute :first_name,  :validate => true
  attribute :last_name,   :validate => true
  attribute :email,       :validate => true
  attribute :message,     :validate => true
  attribute :nickname,    :captcha  => true

  # def headers(
  #     :subject => "Contact Form",
  #     :to      => "",
  #     :from    => %("#{name}"<#{email}>)
  #   )
  # end


  
end