

class List
	Node = Struct.new(:value, :next, :prev)

	@head 
	@tail 

	def initialize()
		@head = nil
		@tail = nil
	end

	def push(value)
	
		n = Node.new(value,nil,@tail)
		if(head = nil)
			head = n
		end
		tail = n
	end
end
