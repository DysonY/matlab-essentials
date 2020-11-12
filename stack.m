classdef stack < handle
    % This is an implementation of a stack using a singly-linked list.
    
    properties (Access = private)
        head
        size
    end
    
    methods (Access = public)
        function this = stack()
            % Construct an empty stack.
            this.head = node(NaN, NaN);
            this.size = 0;
        end
        
        function push(this, value)
            % Push an item to the top of the stack.
            if this.head.isTerminal()
                this.head = node(value, NaN);
            else
                newHead = node(value, this.head);
                this.head = newHead;
            end
            this.size = this.size + 1;
        end
        
        function topItem = pop(this)
            % Pop the top item and return it.
            if this.size == 0
                error('Cannot pop empty stack');
            end
            topItem = this.head.value;
            this.head = this.head.next;
            this.size = this.size - 1;
        end
        
        function topItem = peek(this)
            % Return the top item without removing it.
            topItem = this.head.value;
        end
        
        function val = isEmpty(this)
            % Return true if the stack is empty.
            val = (this.size == 0);
        end
        
        function val = getSize(this)
            % Return the size of the stack.
            val = this.size;
        end
        
        function print(this)
            % Print contents of stack.
            if this.size == 0
                error('Cannot print empty stack');
            end
            
            move = this.head;
            for i = 0:(this.size - 1)
                disp(move.value)
                move = move.next;
            end
        end
    end
end

