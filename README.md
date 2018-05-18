# AceBook

Welcome to the Acebook project by team JSpesh, members of the March 2018 cohort at Makers Academy in Shoreditch!

This project is an attempt to build a functional (and probably not particularly pretty!) clone of a certain famous social media platform.

We aren't building it with the intention of producing a competitor (please don't sue us!) - we don't have the expertise or the time.

Rather, the aim is to provide goals and structure under which to familiarise ourselves with the Ruby on Rails framework and associated test-driven development tooling, including, but not limited to, Heroku staging, Rubocop, Rspec, Travis CI.

[The card wall is hosted by Waffle, and you can find it here.](https://waffle.io/SamNiechcial/acebook-jspesh)

Current Travis CI Build Status

[![Build Status](https://travis-ci.org/SamNiechcial/acebook-jspesh.svg?branch=master)](https://travis-ci.org/SamNiechcial/acebook-jspesh)

Current test coverage information from CodeClimate:

<a href="https://codeclimate.com/github/SamNiechcial/acebook-jspesh/test_coverage"><img src="https://api.codeclimate.com/v1/badges/412d87af8cabda3d63f9/test_coverage" /></a>

Current maintainability assessment from CodeClimate:

<a href="https://codeclimate.com/github/SamNiechcial/acebook-jspesh/maintainability"><img src="https://api.codeclimate.com/v1/badges/412d87af8cabda3d63f9/maintainability" /></a>

## What We Achieved

1.  Gained a deeper understanding of DevOps work and the importance of managing dependency issues quickly.

2.  Followed development best practice, writing tests first, maintaining high levels of test coverage, keeping our tasking Kanban board up to date and managing git workflow correctly with independent review of branches before merging into the master.

3.  Mapping our ActiveRecord SQL database relationships using the rails ERD (entity relationship diagram) gem in order to ensure that we had a good understanding of our Domain Model and database relationships.

## Challenges We Faced

1.  Time constraints were a big factor. As always with Makers projects, there were a lot more tasks than a team with our level of understanding could reasonably achieve.

2.  Distinguishing between the need for Unit testing & Feature testing.

## Potential Next Steps

1.  Finish Like functionality
2.  Test and fix edge cases including preventing people who aren't logged in to add posts, like posts.
2.  More styling work on the front end using bootstrap and associated technologies, including sass.

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```
