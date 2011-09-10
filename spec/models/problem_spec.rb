require 'spec_helper'

describe Problem do
  
  describe ".build_from_log" do
    let(:problem) { Problem.build_from_log('./app/models/post.rb:2 - remove trailing whitespace') }
    describe ".line_number" do
      it "returns the line number containing the problem" do
        problem.line_number.should == 2
      end
    end

    describe ".filename" do
      it "returns the path to the file containing the problem" do
        problem.filename.should == './app/models/post.rb'
      end
    end

    describe ".description" do
      it "returns a description of the problem" do
        problem.description.should == 'remove trailing whitespace'
      end
    end    
  end
  
end