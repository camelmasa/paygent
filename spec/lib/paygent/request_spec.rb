require 'spec_helper'

describe Paygent::Request do

  describe '.initialize' do
    it "return Paygent::Request" do
      expect(Paygent::Request.new).to be_a Paygent::Request
    end
  end
  describe '.params' do
    it "return config hash" do
      request = Paygent::Request.new
      expect(request.params).to eq({
        :merchant_id => "",
        :connect_id => "",
        :connect_password => "",
        :limit_count => 2000,
        :telegram_version => "1.0"
      })
    end
  end
  describe '.params_str' do
    it "return url parameter" do
      request = Paygent::Request.new
      expect(request.params_str).to eq("merchant_id=&connect_id=&connect_password=&limit_count=2000&telegram_version=1.0")
    end
  end
  describe '.post' do
    it "raise error" do
      request = Paygent::Request.new
      expect{request.post}.to raise_error
    end
  end

  pending '.log' do
  end
  pending '.success?' do
  end
  pending '.success_response?' do
  end
  pending '.success_processed?' do
  end
  pending '.body_hash' do
  end

end
