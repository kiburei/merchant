module ProductsHelper
  def print_price(price)
    format("KES %.2f", price)
    #number_to_currency price
  end
  def print_stock(stock, requested = 1)
    if stock > 0
     @stock = stock
      content_tag(:p, "In Stock (#{@stock})")
    elsif
      content_tag(:p, "Out of Stock")
    elsif requested > stock
      content_tag(:span, "Insufficient stock (#{@stock})", class: "low_stock")


    end
  end
end
