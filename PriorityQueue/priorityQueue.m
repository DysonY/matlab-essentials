classdef priorityQueue < handle
    % Implementation of a priority queue using a max heap.
    
    properties (Access = private)
        heap
        size
    end
    
    methods
        function this = priorityQueue()
            % Constructor.
            this.heap = [];
            this.size = 0;
        end
        
        function enqueue(this, value, priority)
            % Enqueue an item with a certain priority.
            item = struct('priority', priority, 'value', value);
            this.heap = [this.heap, item];
            
            % Bubble up to regain heap property.
            if this.size >= 1
                index = this.size + 1;
                while index > 1
                    parentIndex = floor(index / 2);
                    parent = this.heap(parentIndex);
                    if item.priority > parent.priority
                        this.heap(parentIndex) = item;
                        this.heap(index) = parent;
                    else
                        break;
                    end
                    index = parentIndex;
                end
            end
            this.size = this.size + 1;
        end
        
        function output = dequeue(this)
            % Remove the first element and return it.
            if this.size == 0
                error('Cannot dequeue an empty queue');
            end
            output = this.heap(1);
            
            % Bubble down to regain heap property.
            item = this.heap(this.size);
            this.heap(1) = item;
            index = 1;
            while index < this.size - 1
                leftChild = this.heap(2 * index);
                rightChild = this.heap(2 * index + 1);
                
                % If left child is greater than right, swap left.
                % Otherwise, swap right.
                if leftChild.priority > rightChild.priority
                    this.heap(2 * index) = item;
                    this.heap(index) = leftChild;
                    index = 2 * index;
                else
                    this.heap(2 * index + 1) = item;
                    this.heap(index) = rightChild;
                    index = 2 * index + 1;
                end
                
                % If no children, stop bubbling.
                if index * 2 > this.size - 1
                    break;
                end
            end
            
            % Remove last element of heap.
            this.heap(this.size) = [];
            this.size = this.size - 1;
        end
        
        function val = peek(this)
            % Return first element in queue without removing it.
            val = this.heap(1);
        end
        
        function val = getSize(this)
            % Return number of elements in queue.
            val = this.size;
        end
        
        function val = isEmpty(this)
            % Test whether queue is empty.
            val = (this.size == 0);
        end
        
        function printHeap(this)
            % Use for debugging
            for i = 1:this.size
                disp(this.heap(i).priority)
            end
        end
    end
end
