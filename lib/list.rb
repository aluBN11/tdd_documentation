

class List
	Node = Struct.new(:value, :next, :prev)

	@head = nil
	@tail = nil

	#def self.new
	#end

	def initialize( array )
		
		#if( array.length > 0) 
		for	obj in array
			#puts obj.name
			push_back(obj)
			#puts @tail
		end
		
		#puts @head, @tail
	end
	
	def push(value)
	
		n = Node.new(value,@head,nil)
		if(@tail == nil)
			@tail = n
		end
		if(@head != nil)
			@head.prev = n
		end
		@head = n
	end

	def push_back(value)
	
		n = Node.new(value,nil,@tail)
		if(@head == nil)
			@head = n
		end
		if(@tail != nil)
			@tail.next = n
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

  def each
	#if(@head != nil)
		n = @head
		#puts n
		raise "Bad class" unless n.class == List::Node
		while n != nil
 			yield n.value
			n = n.next
		end
	#end
  end

	def index(value)
	
		i = 0
		n = @head
		while n != nil
			if n.value == value
				return i
			end
			i+=1
		end
		return nil
	end


	def [](i)

		n = @head		
		while i > 0 
			n = n.next
			i -= 1
		end 

		return n.value
	end

		
	def []=(i, value)
		n = @head		
		while i > 0 
			n = n.next
			i -= 1
		end 
		n.value += value
	end

	def to_array()
		a = []
		for obj in self
			a << obj
		end
		return a
	end

end
