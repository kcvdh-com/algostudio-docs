# Test Cases

Test cases live in a file called `expectedOutputs.json`. This file tells AlgoStudio what inputs to give the student's function and what the correct answer should be.

## Format

The file is a list. Each item is a pair: the inputs, and the expected output.

```json
[
  [[1, 2], 3],
  [[10, 20], 30],
  [[-1, 1], 0]
]
```

Each item looks like this: `[[inputs], expected_output]`

- The **inputs** are always a list, even if there's only one
- The **expected output** is whatever the function should return

## Example

Say you have a problem where students write a function called `add` that adds two numbers.

```json
[
  [[1, 2], 3],
  [[5, 5], 10],
  [[-1, 1], 0],
  [[0, 0], 0]
]
```

When a student submits, AlgoStudio runs `add(1, 2)` and checks if the answer is `3`, then `add(5, 5)` and checks for `10`, and so on.

## Tips

- **More test cases = better feedback.** Students see which ones passed and which ones failed.
- **Include edge cases.** Zeros, negatives, empty inputs — these are where bugs hide.
- **The function name matters.** The problem has a `functionName` set when it was created. Your test cases must match that function.

!!! warning "The file must be valid JSON"
    If `expectedOutputs.json` has a syntax error, the problem won't run. Use a JSON validator if you're unsure.
