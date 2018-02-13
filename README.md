# Riddles

#### A Sinatra application for asking riddles and evaluating answers, 02.12.2018

#### By Misha Petrov, Russell Hofvendahl

## Description

Ask user some number of riddles (randomly selected from pool), return success if all are answered correctly, return failure if too many are answered incorrectly.

## Specifications

1. Select random question-answer (key-value) pair
  Example Input: "what is your name?"
  Example Output: "launcelot"
2. Evaluate answer
  * Example Input: "launcelot"
  * Example Output: true
3. Answer case, non-letter char insensitive
  * Example Inputs: Please enter the dimensions & weight
  * Example Outputs:
4. Win condition (Game class)
  * Example Inputs: [three correct answers]
  * Example Outputs: [win]
5. Lose condition (Game class)
  * Example Inputs: [two incorrect answers]
  * Example Outputs: [lose]
[front end stuff]

## Setup/Installation Requirements

  1. install ruby 2.2.2
  2. install bundler gem (execute "gem install bundler")
  3. clone or download triangle repository
  4. run bundler in repository (execute "bundle")
  5. run anagrams_script.rb (execute "ruby anagrams_script.rb")
    * if this does not work try updating the shebang ("#!/...") at top of script file with the absolute path to your ruby interpreter
  6. to test: run rspec in main folder (execute "rspec")

## License

Copyright (c) 2018 Misha Petrov, Russell Hofvendahl

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
