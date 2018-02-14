require('rspec')
require('favorite_things')
require('pry')

  describe("Item") do
    describe('.all') do
      it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Item.new("tacos")
      item.save()
      expect(Item.all()).to(eq([item]))
    end
  end

end
