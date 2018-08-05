class Transfer
  # your code here

  attr_reader :from, :to, :amount, :status

  def initialize(from, to, amount)
    @from = from
    @to = to
    @amount = amount
    @status = 'pending'
  end

  def valid?
    @from.valid? && @to.valid? ? true : false
  end
end
