# Objective-C Memory Management and Delegate Issues

This repository demonstrates common Objective-C memory management pitfalls and improper delegate handling, which can lead to memory leaks and crashes.  The `bug.m` file contains code exhibiting these problems. The `bugSolution.m` demonstrates how to resolve the issues.

## Issues Addressed:

* **Memory Leaks:**  Improper handling of object ownership using `strong` properties leading to memory leaks. This is particularly evident with the `someString` property in the example.
* **Delegate Handling:** This example doesn't explicitly illustrate delegate issues;  the concept of safely setting delegates to `nil` to break strong references is described in the solution.

## Solution:

The `bugSolution.m` file shows proper memory management techniques.  In the case of the string, releasing/nilling ensures previous allocations are dealt with.