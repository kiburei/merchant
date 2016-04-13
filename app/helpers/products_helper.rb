module ProductsHelper
  def print_price(price)
    format("KES %.2f", price)
    #number_to_currency price
  end

  def print_percent(percent)
    @percent = percent
    content_tag(:span, " Progress #{@percent} %", class: "in_stock")
  end

  def print_stock(stock)
    @stock = stock
    @requested = 1
    if stock <= 0
      content_tag(:span, "Out of Stock", class: "out_stock")
    elsif stock >= @requested
      content_tag(:span, "In Stock (#{@stock})", class: "in_stock")
    else
      content_tag(:span, "Insufficient stock (#{@stock})", class: "low_stock")
    end
  end
end
