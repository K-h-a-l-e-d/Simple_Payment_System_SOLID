# Applying SOLID principles on a Simple Payment System

## Description
This project demonstrates how to apply solid principles on a simple payment system in dart

## SOLID Principles Analysis:
- S: **Single-responsibility Principle**: all classes has a single responsibility
- O: **Open-closed Principle**: a Map of payment methods used to make the class **PaymentProcess** which processes the Payment Methods selection Closed to Modification and open to Extension, where adding or removing a payment method is independent of **PaymentProcess** Class 
- L: **Liskov Substitution Principle**: all classes inherit from Payment Super Class which makes them replaceable with their superclass
- I: **Interface Segregation Principle**: all classes aren't forced to implement methods they don't need
- D: **Dependency Inversion Principle**: higher level classes doesn't depend on Lower level classes  
## Code Output:
![swappy-20250219-013741](https://github.com/user-attachments/assets/6eea5da5-932a-46e1-a53d-ff5b14d3362d)
