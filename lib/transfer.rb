class Transfer
  # your code here


  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if !self.valid?
      @status = 'rejected'
      "Transaction rejected. Please check your account balance."
    elsif status == 'complete'
      "Can't make duplicate transaction"
    else
      @sender.balance -= amount
      @receiver.balance += amount
      @status = 'complete'
    end
  end

  def reverse_transfer
    @sender.balance += amount
    @receiver.balance -= amount
    @status = 'reversed'
  end
end
