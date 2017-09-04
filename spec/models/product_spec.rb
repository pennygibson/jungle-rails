require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do


    it "should check presence of name" do
      @cat = Category.create(name: "test category")
      @p = Product.create(name: nil, price: 10, quantity: 10, category: @cat)
      expect(@p).to be_invalid
    end
    it "should check presence of price" do
      @cat = Category.create(name: "test category")
      @p = Product.create(name: "shoes", price: nil, quantity: 2, category: @cat)
      expect(@p).to be_invalid
    end
    it "should check presence of quantity" do
      @cat = Category.create(name: "test category")
      @p = Product.create(name: "furniture", price: 40, quantity: nil, category: @cat)
      expect(@p).to be_invalid
    end
    it "should check presence of category" do
      @cat = Category.create(name: "test category")
      @p = Product.create(name: "furniture", price: 50, quantity: 5, category: nil)
      expect(@p).to be_invalid
    end



    # it { is_expected.to validate_presence_of()}
    # it { is_expected.to validate_presence_of()}
    # it { is_expected.to validate_presence_of()}

  end
end

# it { is_expected.to validate_presence_of(:model) }
#     it { is_expected.to validate_presence_of(:speeds) }
#     it { is_expected.to validate_numericality_of(:speeds) }
#      expect(@fixie.description).to eq("Red Brand X Fixie.")

#      it "Should belong to style" do
#       @bicycle.style = @style
#       expect(@bicycle.style).to eq(@style)
#     end