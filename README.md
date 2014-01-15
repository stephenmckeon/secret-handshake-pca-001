---
  tags: todo, bitwise operations, oop
  languages: ruby
---

# Binary Secret Handshake

There are 10 types of people in the world: Those who understand binary, and those who don't.

You and your fellow flatirons who are in the know when it comes to binary decide to come up with a secret handshake.

To get even more in the "know", brush up on your binary [here](http://en.wikipedia.org/wiki/Binary_number).

### Skills: Binary, Bitwise Operations, Object Oriented Programming

## Instructions

Here are the rules you've decided on:

```bash
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump


# 10000 = Reverse the order of the operations in the secret handshake.
```

Write a program that will convert a binary number (represented as a string, i.e. "101010") to the appropriate sequence of events for a secret handshake.

ex.

```ruby
handshake = SecretHandshake.new "1001"
handshake.commands # => ["wink","jump"]

handshake = SecretHandshake.new "11001"
handshake.commands # => ["jump","wink"]
```

Note: The program should return an empty array when given an invalid binary sequence.

P.S: There are tons of ways to do this! Your solutions will vary greatly!