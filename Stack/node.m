classdef node < handle
    % This is a node for a singly-linked list.
    
    properties
        value
        next
    end
    
    methods
        function this = node(value, next)
            % Constructor
            this.value = value;
            this.next = next;
        end
        
        function printNode(this)
            % Print value of node; use for debugging
            disp(this.value)
        end
        
        function val = isTerminal(this)
            % Return true if node is terminal (value and next both NaN)
            val = isnan(this.value);
        end
    end
end

