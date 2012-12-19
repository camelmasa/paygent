require 'spec_helper'

describe Paygent::Service do

  describe '.set_url' do
  end

  describe '.get_url_with_telegram_kind' do
    it "" do
      expect(Paygent::Service.get_url_with_telegram_kind(01)).to eq("https://mdev.paygent.co.jp/n/atm/request")
    end
    it "" do
      expect(Paygent::Service.get_url_with_telegram_kind(99)).to be_false
    end
  end

end
