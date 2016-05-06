# README

This is an example Rails (5beta4) application showing Sprockets and NPM coexisting.

## Assumptions

* You use sprockets.
* You author your own application.js using sprockets (`app/assets/javascripts/application.js`).
* You want to use npm to manage front-end assets (`package.json`).

## Purpose

As a proof-of-concept, I want to pull jquery using npm and require it in my application.js for usage in the Rails asset pipeline.

## Usage

* `bundle install`
* `npm install` (or `brew install npm` first)

## Credits

Credit to Rafael França for showing sprockets directive code for npm during RailsConf 2016 KCMO.
