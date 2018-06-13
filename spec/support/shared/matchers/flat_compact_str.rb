module ReceiveWithFlatStr
  def receive_with_flat_str(method, *expected, **kwexps)
    receive(method) do |*args, **kwargs|
      expect(args.flatten.compact.map(&:to_s)).to eql(expected)
      expect(kwargs).to eql(kwexps)
    end
  end
end
