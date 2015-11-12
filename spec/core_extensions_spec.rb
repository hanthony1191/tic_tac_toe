require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all the elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be true
    end
    
    it "returns false if some of the elements of the Array are not empty" do
      expect([1, "", Object.new, "", :a].all_empty?).to be false
    end
    
    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end
  
  context "#all_same?" do
    it "returns true if all the elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be true
    end
    
    it "returns false if some of the elements of the Array are not the same" do
      expect([1, Object.new, 1].all_same?).to be false
    end
    
    it "returns true for an empty Array" do
      expect([].all_same?).to be true
    end
  end
  
  context "#any_empty?" do
    it "returns true if any element of the Array is empty" do
      expect(["", 1, Object.new].any_empty?).to be true
    end
    
    it "returns false if any element of the Array is not empty" do
      expect(["A", :a, 1].any_empty?).to be false
    end
  end
  
  context "#none_empty?" do
    it "returns true if no element of the Array is empty" do
      expect(["A", 1, Object.new].none_empty?).to be true
    end
    
    it "returns false if any element of the Array is empty" do
      expect(["", :a, 1].none_empty?).to be false
    end
  end       
end
