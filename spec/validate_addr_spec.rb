require './email_validate'
require 'RSpec'

RSpec.describe 'email_validate' do

  def addr

  end

  # describe '標準入力の確認' do
  #   let(:str_list) { StringIO.new("10\n250\n100\n1.5\n", 'r') }
  #   it { expect( Circle.to_list(str_list.string)).to eq [10, 250, 100, 1.5]}
  # end

  describe 'validate_addr' do
  end

  describe 'split_addr' do
      let(:addr_test){[
        "abc@example.com",
        "yuji@gmail.com",
        "yu@ji@gmail.com",
        "yuji@gma@il.com",
        "@gmail.com",
        "garu@",
        "@@@@@",
        "garu"
        ]}
      let(:addr_result){[
        ["abc", "example.com"],
        ["yuji","gmail.com"],
        ["yu@ji", "gmail.com"],
        ["yuji@gma", "il.com"],
        ["", "gmail.com"],
        ["garu", ""],
        ["@@@@", ""],
        ["", ""]
        ]}

    it {
      addr_test.each_with_index do |addr, i|
        expect(EmailValidate.split_addr(addr)).to eq addr_result[i]
      end
    }

  end

  describe 'domain_1' do
      let(:domains){[
        "gmail.com",
        "Gmail.com",
        "!Gmainl$.com"
        ]}
    it {
      domains.each_with_index do |domain|
        expect(EmailValidate.domain_1(domain)).to eq true
      end
    }
  end

  describe 'domain_234' do
      let(:success_domains){[
        "gmail.com",
        "mi.xi.com"
        ]}
        let(:fail_domains){[
          ".gmail.com",
          "Gmail.com.",
          "!Gmainl$..com"
          ]}
    it {
      success_domains.each_with_index do |domain|
        expect(EmailValidate.domain_234(domain)).to eq true
      end
    }
    it {
      fail_domains.each_with_index do |domain|
        expect(EmailValidate.domain_234(domain)).to eq false
      end
    }
  end

  describe 'domain_5' do
      let(:success_domains){[
        "gmail.com",
        "mi.xi.com"
        ]}
        let(:fail_domains){[
          ""
          ]}
    it {
      success_domains.each_with_index do |domain|
        expect(EmailValidate.domain_5(domain)).to eq true
      end
    }
    it {
      fail_domains.each_with_index do |domain|
        expect(EmailValidate.domain_5(domain)).to eq false
      end
    }
  end

end
