class Transfer
  # your code here

  attr_accessor :sender, :reciever, :amount, :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = 'pending'
  end

  def valid?
    @sender.valid? && @reciever.valid? ? true : false
  end

  
end
