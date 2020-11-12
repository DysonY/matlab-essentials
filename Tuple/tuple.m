classdef tuple < handle
    % Tuple implemented using containers.Map from the standard library.
    
    properties (Access = private)
        data
    end
    
    methods
        function this = tuple(varargin)
            % Constructor.
            if nargin < 1
                error('Cannot initialize an empty tuple');
            end
            this.data = containers.Map(1:nargin, varargin);
        end
        
        function val = get(this, n)
            % Returns the nth element of the tuple.
            val = this.data(n);
        end
        
        function set(this, n, value)
            % Sets the nth element of the tuple to value.
            this.data(n) = value;
        end
    end
end

