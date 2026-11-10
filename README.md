# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Kade Burback Kenny Shannon

## Summary
We learned how to implement both a ripple counter and a modulo divider in verlilog. For the ripple counter, we used our previously made T-FlipFlop and for the modulo divider, we used both a full adder and a D-FlipFlop
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
In the modulo counter, we have to do two full counts for each singl Hz. This is because a single Hz is defined by a transition from high to low and then back to high.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
It goes to all 1s on the first clock cycle as an initialization state before the counting starts.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
We got to 1 Hz by using the equation log2(Cval) for 100 MHz or 100,000,000, which is 27. By applying the same equation to get an output of ~1KHz [log2(100,000)], we get answer of 20 bits of width.
