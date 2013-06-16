require 'spec_helper'

describe Post do
  
  subject { @post }

  it { should respond_to(:content) }

  before { @post = Post.new(content: "Lorem ipsum")}

end
