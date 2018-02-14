#!/usr/bin/ruby

class Item
  @@list = []
  attr_reader :id
  attr_accessor :name
  attr_accessor :rank

  def initialize(name,rank)
    @name = name
    @id = @@list.length + 1
    @rank = rank
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

  # def self.sort(rank)
  # @@list.sort_by{|item| item.rank}
  # end
end
