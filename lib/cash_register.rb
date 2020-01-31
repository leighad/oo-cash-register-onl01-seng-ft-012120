require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction, :popped_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        #discount is a percentage
        @items = []
    end

    def add_item(title, price, quantity = 1)
        cost = price * quantity
        @total += cost
        quantity.times do
            @items << title
        end
        @last_transaction = cost 
    end

    def apply_discount
        if discount != 0
            @total = total - (total * (discount.to_f/100)).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end

    def pop_last_transaction(title, quantity)
        @popped_transaction = 
        quantity.times do
            @items.delete(title)
        end
    @items  
    end
end
