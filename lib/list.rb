

class List
	Node = Struct.new(:value, :next, :prev)

	@head = nil
	@tail = nil

	def initialize()
	end

	def push(value)
	
		n = Node.new(value,@head,nil)
		if(@tail == nil)
			@tail = n
		end
		@head = n
	end

	def push_back(value)
	
		n = Node.new(value,nil,@tail)
		if(@head == nil)
			@head = n
		end
		@tail = n
	end

	def pop()
		#puts @head
		#puts @tail
		if(@head != nil)
			n = @head #.dup may give problems if not a duplicate, havent found any yet
			@head = n.next
			if(@head != nil)
				@head.prev = nil
			else
				#if head == tail
				@tail = nil
			end

			n.value
		else
			nil
		end
	end

	def pop_back()
		#puts @head
		#puts @tail
		if(@tail != nil)
			n = @tail #.dup may give problems if not a duplicate, havent found any yet
			@tail = n.prev
			if(@tail != nil)
				@tail.next = nil
			else
				#if head == tail
				@head = nil
			end

			n.value
		else
			nil
		end
	end
end
