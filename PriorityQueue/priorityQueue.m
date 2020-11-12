classdef priorityQueue < handle
    % Implementation of a priority queue using a max heap.
    
    properties
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
            
            % If heap contains multiple elements, bubble up.
            if this.size >= 1
                index = this.size + 1;
                while index > 1
                    parentIndex = floor(index / 2);
                    parent = this.heap(parentIndex);
                    if item.priority > parent.priority
                        temp = struct('priority', parent.priority, 'value', parent.value);
                        this.heap(parentIndex) = item;
                        this.heap(index) = temp;
                    else
                        break;
                    end
                    index = parentIndex;
                end
            end
            this.size = this.size + 1;
        end
        
        function printHeap(this)
            % Use for debugging
            for i = 1:this.size
                disp(this.heap(i).priority)
            end
        end
    end
end

