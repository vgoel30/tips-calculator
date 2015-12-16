# Pre-work - tips

tips is a tip calculator application for iOS.

Submitted by: Varun Goel

Time spent: 10-15 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
- I have added a separate stepper for the total number of people. This will allow the user to see the the total contribution that is required per person. The range for the number of people is 1-10 (both inclusive). Additionally, the range for tip percentage is 10-90 (both inclusive)
- If the bill amount field is empty, the result view is kept hidden. This means the inerface looks neater right when the user dives into the application

## Video Walkthrough 

Here's a walkthrough:
<a>http://imgur.com/gallery/7n3t9CG</a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

TipViewController is named ViewController and SettingsViewController is named SecondViewController

Challenges encountered while building the app:
The primary challenge for me was getting used to event-driven and interface based programming. This was my first attempt at making an interactive app with a proper GUI. All my programs till now have been simple console-version programs. 

Other than that, figuring everything out, how one elemnent is going to affect the behavior of another elements and how two different views can affect each other took some time to wrap my head around.

## License

    Copyright [2015] [Varun Goel]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
