# MATLAB Essentials
This is a collection of MATLAB data structures and scripts which I find immensely helpful, but are not part of the standard library.

## Stack
The stack is a LIFO data structure, i.e. elements which are added last are the first to be removed. It is implemented using a singly-linked list. It supports the following methods:
Methods | Description | Time Complexity
------- | ----------- | ---------------
push(val) | Puts val on top of stack | O(1)
pop | Removes top item and returns it | O(1)
peek | Returns top item without removing it | O(1)
isEmpty | Tests whether stack is empty | O(1)
getSize | Returns number of items in stack | O(1)
print | Prints contents of stack | O(n)

Example:
```MATLAB
% Create instance of stack
s = stack

% Push items
s.push(1)
s.push(2)
s.push(3)

% Confirm that stack has 3 elements
assert(s.getSize == 3)

% Confirm that top of stack is equal to 3
assert(s.peek == 3)

% Print contents of stack
s.print

% Pop items
s.pop
s.pop
s.pop

% Confirm that stack is empty
assert(s.isEmpty)
```

## Queue
The Queue is a FIFO data structure, i.e. elements which are added first are the first to be removed. It is implemented using a singly-linked list. It supports the following methods:
Methods | Description | Time Complexity
------- | ----------- | ---------------
enqueue(val) | Puts val at back of queue | O(1)
dequeue | Removes front element and returns it | O(1)
peekFront | Returns front element without removing it | O(1)
peekBack | Returns back element without removing it | O(1)
isEmpty | Tests whether queue is empty | O(1)
getSize | Returns number of items in stack | O(1)
print | Prints contents of queue | O(n)

## Priority Queue
The Priority Queue is a structure where elements with the highest priority are the first to be removed. It is implemented using a binary max-heap. It supports the following methods:
Methods | Description | Time Complexity
------- | ----------- | ---------------
enqueue(val, priority) | Inserts val with priority into queue | O(log n)
dequeue | Removes highest-priority element and returns it | O(log n)
peek | Returns highest-priority element without removing it | O(1)
peekPriority | Returns priority of highest-priority element without removing it | O(1)
isEmpty | Tests whether queue is empty | O(1)
getSize | Returns number of elements in queue | O(1)
print (TODO) | Prints contents of queue | O(?)

## Tuple
