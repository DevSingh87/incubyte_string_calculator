# String Calculator TDD Kata (Ruby + RSpec + TDD)

A simple **String Calculator** built using **Ruby** and **RSpec**, developed entirely with **Test-Driven Development (TDD)** principles.

---

## Project Overview

This project demonstrates the **TDD workflow in Ruby**.  
Each feature was developed through the classic Red-Green-Refactor cycle:

1. 🟥 Write a failing test  
2. 🟩 Write the minimal code to make it pass  
3. 🧹 Refactor for clarity and simplicity  

---

## Features

| ✅ Feature | Description |
|-------------|--------------|
| Empty string | Returns `0` |
| Single number | Returns the number itself |
| Multiple comma-separated numbers | Returns their sum |
| Newline as delimiter | Handles `\n` along with commas |
| Custom delimiter | e.g. `//;\n1;2` |
| Negative number validation | Raises `negatives not allowed: ...` |
---

## Setup Instructions

### 1️⃣ Clone or extract project
Download the `.zip` from github repo:
```bash
unzip incubyte_string_calculator.zip
cd incubyte_string_calculator
```
### 2️⃣ Install dependencies
Make sure you have Ruby (≥ 3.0) and Bundler installed:
```bash
ruby -v
gem install bundler
bundle install
```
### 3️⃣ Verify project structure
Ensure the following files exist:

- Gemfile

- lib/string_calculator.rb

- spec/string_calculator_spec.rb

- .rspec

- spec/spec_helper.rb
---

### Running the Test Suite
Run all tests using **RSpec**:
```bash
rspec
```
Expected output:
```bash
StringCalculator
  .add
    returns 0 for empty string
    returns the number itself if only one number is given
    returns sum of two comma-separated numbers
    handles an unknown amount of numbers
    handles new lines between numbers
    supports custom delimiters
    throws exception for negative numbers

Finished in 0.00784 seconds (files took 0.56529 seconds to load)
7 examples, 0 failures
```
---
### Example Usage
Run in an interactive Ruby session:
```bash
irb -r './lib/string_calculator.rb'
```
The try:
```bash
StringCalculator.add("")                    # => 0
StringCalculator.add("1,2,3")               # => 6
StringCalculator.add("1\n2,3")              # => 6
StringCalculator.add("//;\n1;2")            # => 3
```
