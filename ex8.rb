class PaginationHelper
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def page_count
    (@collection.length.to_f / @items_per_page).ceil
  end

  def item_count
    @collection.length
  end

  def page_item_count(page_index)
    return -1 if page_index < 0 || page_index >= page_count

    if page_index < page_count - 1
      @items_per_page
    else
      item_count % @items_per_page
    end
  end

  def page_index(item_index)
    return -1 if item_index < 0 || item_index >= item_count

    item_index / @items_per_page
  end
end

helper = PaginationHelper.new(['a','b','c','d','e','f','g','j', 'k'], 4)
puts helper.page_count()         # should == 2
puts helper.item_count()         # should == 8
puts helper.page_item_count(0)   # should == 4
puts helper.page_item_count(1)   # should == 4
puts helper.page_item_count(2)   # should == -1 (invalid page)
puts helper.page_index(5)        # should == 1 (zero-based index)
