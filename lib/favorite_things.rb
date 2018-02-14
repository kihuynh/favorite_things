#!/usr/bin/ruby

class Item
  @@list = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  # def self.find(name)
  # end
  #
  # def method_name()
end
