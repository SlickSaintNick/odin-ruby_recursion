# odin-ruby_recursion

Completed as part of The Odin Project.

There are two sections, Fibonacci and Merge Sort.

## Fibonacci
fibs.rb contains two methods to return a fibonacci array of length n.

### Iterative approach
The fibs method solves this iteratively. As an additional feature, the starting two elements can be set in this method e.g. to start with [2, 2] and return a Fibonacci like sequence of 5 elements [2, 2, 4, 6, 10]:

```ruby
fibs(5, [2, 2])
```

After dealing with the specific cases of 0 and 1 element, the method iterates as many times as requested adding a new Fibonacci number to the array each time.

### Recursive approach
The fibs_rec method solves this recursively. To avoid a long method statement this version does not account for the fibs_rec(0) case, which will throw an error.

The base cases are the 1st and 2nd elements, which return 0 and 1 respectively. The recursion begins at the final position of the array and recursively builds a call stack back to the first and second element base cases. It then populates the array as the stack resolves itself on the way back up.

## Merge Sort
This method applies the pseudocode for merge sort from David Malan / CS50:

```
If only one number
    Quit
Else
    Sort left half of numbers
    Sort right half of numbers
    Merge sorted halves
```

The recursion happens at the "sort left half" and "sort right half" steps.

I couldn't see a way to reduce the Assignment Branch Condition without a helper method - the merge for example could be split into another method to reduce the ABC.