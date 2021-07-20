# Intro to Object Oriented Ruby
## 1st Segment - Review of OO basics

Review of classes vs instances

Throw out questions:

```rb
class Computer
end

computer = Computer.new
```

Which is a class, which is an instance?

How is this distinction meaningful/helpful in the real world?

## Activity 1

Build out a Computer class. A computer has a brand, screen size, model name, model year. Then, create 2 computers. You can run the tests using the `rspec` command. (15 minutes in breakouts)

When we return, be prepared to share your solution with the group.
Confirm:
- Created Instances
- called setter methods to assign attributes

### What Errors Did you hit?

-

## Discussion Questions

### Why is OO design as popular as it is? 

#### 2 Situations Where Object Oriented Design is well suited
>I want to have total control of what my objects look like by updating my class.

If I'm building an accounting program where I have very detailed data requirements for:
- customers
- invoices 
- employees 
- products 
- inventory 

Object Oriented design would help me clearly define the responsibilities of the different objects in my program and how they are related to other objects in the program. 

### What's another type of application that might lend itself well to an object oriented design? 

#### 2 situations where object oriented design presents obstacles
>Because I have total control, I don't have the flexibility to change my object's attributes things without changing my class.

If I were building a social media application, being able to iterate quickly and experiment with new features without having to make a more significant commitment to a change is a benefit. If we're in a situation where we're interacting with data from multiple external sources and we don't have control over the attributes present, an object oriented approach.


Take 5 minute break after discussion

## 2nd Segment - Understanding why solution works and Adding Instance Methods

Discussion of solution to part 1
- What is an instance method?
  - Which ones are setter methods? Why?
  - What ones are getter methods? Why?
- What makes an instance variable different from a local variable?
- What's the difference between an instance method and an instance variable?
- How you call an instance method vs regular method?
- Spam pry to identify the value of `self`. How is it related here?

### Setting up Activity 

Let's build these instance methods together:

- `Computer#asleep` 
- `Computer#sleep`
- `Computer#wake_up`
- `Computer#back_up`
- `Computer#last_backed_up_at` 

## Activity 2 - build 

In breakout rooms, build an `#about_this_computer` method that returns all the information about the computer as a hash containing the computer's:

- `brand` (string)
- `screen size` (float)
- `model name` (string)
- `model year` (integer)
- `last backup time` (datetime as string - refer to test code for formatting)

## Segment 3 - Discussion of Object Oriented paradigm

Object Oriented Paradigm sits very well with Relational databases like PostgresQL. Full Stack JS applications can pair well with document based databases like MongoDB. 

## Activity 3 - Group Discussion

What are the benefits of designing our computer class the way that we did?

- background of what we would be able to do

Let's say we've already created 50 computers. if we decide that we need to start keeping track of whether computers are desktops or laptops, what problem would we have to solve?