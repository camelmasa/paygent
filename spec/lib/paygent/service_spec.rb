require 'spec_helper'

describe Paygent::Service do

  describe '.set_url' do
    it "return url" do
      url = "http://foo.com"
      expect(Paygent::Service.set_url(01, url)).to eq(url)
    end
  end

  describe '.get_url_with_telegram_kind' do
    it "return url" do
      expect(Paygent::Service.get_url_with_telegram_kind("01")).to eq("https://mdev.paygent.co.jp/n/atm/request")
    end
    it "return false" do
      expect(Paygent::Service.get_url_with_telegram_kind("99")).to be_false
    end
  end

end
