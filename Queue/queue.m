classdef queue < handle
    % Queue implemented using singly-linked list.
    
    properties (Access = private)
        head
        tail
        size
    end
    
    methods
        function this = queue()
            % Constructor.
            this.head = node(NaN, NaN);
            this.tail = this.head;
            this.size = 0;
        end
        
        function enqueue(this, value)
            % Enqueue element at back of queue.
            if this.tail.isTerminal()
                this.tail = node(value, NaN);
                this.head = this.tail;
            else
                this.tail.next = node(value, NaN);
                this.tail = this.tail.next;
            end
            this.size = this.size + 1;
        end
        
        function frontItem = dequeue(this)
            % Dequeue element from front of queue.
            if this.head.isTerminal()
                error('Cannot dequeue an empty queue');
            end
            frontItem = this.head.value;
            if ne(this.head, this.tail)
                this.head = this.head.next;
            else
                this.head = node(NaN, NaN);
                this.tail = this.head;
            end
            this.size = this.size - 1;
        end
        
        function val = peekFront(this)
            % Return first element in queue.
            if this.size == 0
                error('Cannot peek empty queue');
            end
            val = this.head.value;
        end
        
        function val = peekBack(this)
            % Return last element in queue.
            if this.size == 0
                error('Cannot peek empty queue');
            end
            val = this.tail.value;
        end
        
        function val = isEmpty(this)
            % Test whether queue is empty.
            if this.size == 0
                val = 1;
            else
                val = 0;
            end
        end
        
        function val = getSize(this)
            % Return number of items in queue.
            val = this.size;
        end
        
        function print(this)
            if this.size == 0
                error('Cannot print empty queue');
            end
            
            move = this.head;
            for i = 0:(this.size - 1)
                disp(move.value)
                move = move.next;
            end
        end
    end
end

