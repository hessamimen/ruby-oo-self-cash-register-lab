
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items=[]
    end
    

    def add_item(title, price, quantity=1)
      self.total += price * quantity
    #   (1..quantity).each do
    #     items << title
    #   end
        n = 0
      until n == quantity do
        items << title
        n +=1
      end
      self.last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0
        self.total -= total * discount/100
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
        
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
