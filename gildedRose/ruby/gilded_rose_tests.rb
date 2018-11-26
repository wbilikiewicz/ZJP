require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'test/unit'

class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "foo"
  end

  def test_1
    items = [Item.new("Random item", 5, 10)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 9
    assert_equal items[0].sell_in, 4
  end

  def test_2
    items = [Item.new("Random item", -1, 10)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 8
    assert_equal items[0].sell_in, -2
  end

  def test_3
    items = [Item.new("Random item", 5, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 0
    assert_equal items[0].sell_in, 4
  end

  def test_4
    items = [Item.new("Aged Brie", 5, 50)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 50
    assert_equal items[0].sell_in, 4
  end

  def test_5
    items = [Item.new("Sulfuras, Hand of Ragnaros", 10, 10)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 10
    assert_equal items[0].sell_in, 10
  end

  def test_6
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 10)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 0
    assert_equal items[0].sell_in, -1
  end

  def test_7
    items = [Item.new("Conjured Mana Cake", 10, 20)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 19
    assert_equal items[0].sell_in, 9
  end

  def test_8
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 21
    assert_equal items[0].sell_in, 14
  end

  def test_9
    items = [Item.new("Aged Brie", 20, 30)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].quality, 31
    assert_equal items[0].sell_in, 19
  end

end
