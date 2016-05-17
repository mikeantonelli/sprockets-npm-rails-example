# README

This is an example Rails 5 (rc1) application showing Sprockets and NPM coexisting.

## Assumptions

* You use sprockets.
* You author your own application.js using sprockets (`app/assets/javascripts/application.js`).
* You want to use npm to manage front-end assets (`package.json`).

## Purpose

As a proof-of-concept, I want to pull jquery using npm and require it in my application.js for usage in the Rails asset pipeline.

## Goals

- [X] Include a node module in a sprockets asset

```javascript
//= npm jquery
```

- [ ] Reference a node module asset using Rails helpers

```haml
javascript_include_tag jquery
```

## Usage

* `bundle install`
* `npm install` (or `brew install npm` first)

## Credits

Credit to Rafael França for showing sprockets directive code for npm during RailsConf 2016 KCMO.
