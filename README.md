# Oystercard

```
@@&*(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((        %%%%%%%%%%%%%%%%%%%%%%%%#@@
#(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((        %%%%%%%%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((,       %%%%%%%%%%%%%%%%%%%%%%%%%
@(((((((((((((((((((((((((((((((((((%%%(((((((((((((((((((((((((((((,       %%%%%%%%%%%%%%%%%%%%%%%%
@(((((((((#%%%%%%#(%%#((#%%(%%%%%%(%%%%%%(%%%%%%%((%%%%%#(##(((((((((,       %%%%%%%%%%%%%%%%%%%%%%%
@((((((((#%((((/%%#(%%##%%((%%%%%(((%%%((%%%%%%%%%(%%%((((((((((((((((       ,%%%%%%%%%%%%%%%%%%%%%%
@(((((((((%%(**#%%(((%%%%(((##((%%#(#%%((#%%#((##((%%#(((((((((((((((((       #%%%%%%%%%%%%%%%%%%%%%
@((((((((((((##((((((%%%(((((###((((((#(((((###(((((#((((((((((((((((((*       %%%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((%%%((((((((((((((((((((((((((((((((((((((((((((((((((       (%%%%%%%%%%%%%%%%%%%%
@(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((,      ,%%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%
@(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((,      ,%%%%%%%%%%%%%%%%%%%%
@(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       #%%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((*       %%%%%%%%%%%%%%%%%%%%%
@((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       %%%%%%%%%%%%%%%%%%%%%%
@(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((       *%%%%%##%%%%%%%%%%%%%%%
@(((((((((.(.*././.*.,/.(..,(.*.*,,(,(,././. /./.,(((((((((((((((((((.       %%%#..,,, (%,      %%%%
@(((((((((((((((((((,(((((((((((((((((((((((((((((((((((((((((((((((.       %%%%%%  . %%%%%%*.#%%%%%
@((((((((((((((#((((((((#((((((#(((((((((((((((((((((((((((((((((((.       %%%%%%%%%%%%%%%%%%%%%%%%%
(/((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((        %%%%%%%%%%%%%%%%%%%%%%%%%%
```

This system was built using the following [TDD](https://en.wikipedia.org/wiki/Test-driven_development#:~:text=Test%2Ddriven%20development%20(TDD),software%20against%20all%20test%20cases.).

Co-authored-by: [Anish Kakaiya](https://github.com/AKCDNG) and [Jimmy Lyons](https://github.com/PKilgarriff)
 
Oystercard emulates the real-life system of how Oystercards work, but in Ruby within the command line.

Oystercard has built in fare-protection, so should you not touch out or touch in correctly, a penalty fare will be risen.

Here are the user stories we've followed:
 ```
 In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```

## Installation
Fork or download this repo.\
Use `gem install bundler` to install the correct gems to use and test this code.\
When installation completes, run `bundle`.\

## How To Use
Load `oystercard.rb` in with `irb`.\
Make a new instance of takeaway with `Oystercard.new`.\
Call `show_balance` to show the current balance of your oystercard.\
Call `show_journey_history` to view the previous journey history with that Oystercard.\
Call `top_up(10)` to top up the Oystercard balance by £10.\
Call `touch_in('Bank')` to touch into a station, in this case, Bank.\
Call `touch_out('London Bridge')` to touch out of a station, in this case, London Bridge'.\



## How To Test
Run `RSpec` to run through tests.\

## Bugs/Future Changes To The Code
* Have not implemented logic for strikes, spares, gutter games or frame 10 logic.
* Fixed edge-case for inputting a score greater than 10 in one or both rolls.

