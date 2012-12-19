require 'spec_helper'

describe Paygent do

  describe '.init' do
    it "is a Paygent::Request" do
      expect(Paygent.init).to be_a Paygent::Request
    end
  end

  describe '.set_url' do
    it "return url" do
      url = "http://foo.com"
      expect(Paygent.set_url(01, url)).to eq(url)
    end
    it "return url" do
      url = "http://foo.com"
      Paygent.set_url(01, url)
      expect(Paygent::Service.get_url_with_telegram_kind(01)).to eq(url)
    end
  end

end
