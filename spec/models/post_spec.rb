require 'spec_helper'

describe Post do
  
  subject { @post }

  it { should respond_to(:content) }

  before { @post = Post.new(content: "Lorem ipsum") }

  describe "with blank content" do 
    before { @post.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do 
    before { @post.content = "b" * 151 }
    it { should_not be_valid }
  end
  
end

