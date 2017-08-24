# Pre-work - Tipper

Tipper is a tip calculator application for iOS.

Submitted by: Amy Erz

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [x] User can select default tip percentage within the range of 10-30%
* [x] Once default tip percentage changed, the tip segment controller will update with 5% increment
* [x] Newly default tip is selected in segment control and recalculate tip amount

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/IAt9mRs.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** 
I enjoyed the iOS app developement. The youtube video is really helpful to kickstart the app without any iOS experence. Coming from front end background, working with javascript daily, swift's static type language is a bit challenging. 
Both outlets and actions are connecting the controller to the view. Outlets are more adjective/ properties (i.e. changing background color) vs Actions are event triggered (user tap).

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**
The assignment of the closure create a strong reference to the instance and yet closure's self create a strong reference which blocking its dellocations. 

## License

    Copyright [2017] [Amy Erz]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
