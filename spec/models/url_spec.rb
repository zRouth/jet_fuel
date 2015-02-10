require "rails_helper"

RSpec.describe Url, :type => :model do

  it "must have a full url" do
    url = Url.create(full_url: "")
    url.full_url = nil

    expect(url).not_to be_valid
  end

  it "must have a valid full url" do
    url = Url.create(full_url: "")
    url.full_url = "ldfhlash"

    expect(url).not_to be_valid
  end


  it "generates a random slug" do
    url = Url.create(url: "")

    expect(url.slug.size).to eq(1)
  end

end
