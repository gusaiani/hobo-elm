# HOBO: Highly Opinionated Budget Organizer - Client

Simple and FAST family budget organizer. Very easy to use, no training necessary.

Use for free... for now: http://hoboapp.com

## Build and run

- Install Elm 0.18
- Install NodeJS (I use version 7.4.0 and Yarn version 0.19.1, with different versions - YMMV)
- `yarn install`
- `elm package install` and agree to everything Evan asks!
- **Change fbAppId in index.js to your own Facebook App ID**. You can create one for "localhost" here: https://developers.facebook.com/apps/
- `yarn start`
- Download, configure and run Rails backend: https://github.com/aspushkinus/hobo-rails
- Ready to play: http://localhost:8080

## Change log

## January 21, 2017

- Upgrade Elm to version 0.18

## September 1, 2016

- Upgrade backend to Rails version 5!
- Change authentication to token auth via headers
- Upgrade elm to latest version 0.17.1

### June 17, 2016

- Fix budget editing cancel button
- Add logout function
- Add link to production site - limited release for Elm developers browsing Github!

### June 16, 2016

- Add full expense editing
- Add full budget list editing
- Cancel the switch to React/Redux LOL!

### June 13, 2016

- Add view/edit expense detail page (no save yet)
- Refactor application into multiple components
- Add routing for list vs view/edit, based on elm-lang/navigation
- Some routing code is ugly, I'm considering changing it to use sporto/hop.

### May 16, 2016

- Upgraded to Elm 0.17, yay!
- Size of compiled JS reduced by 40% - just due to Elm upgrade
