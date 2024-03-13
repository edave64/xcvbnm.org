---
name: 'Phrame 2'
originalRelease: '2013-02-13'
repo: https://github.com/edave64/phrame2
---

Written at a time where I was fascinated with Ruby-on-Rails, but needed to write websites using PHP, since the hosting plans for that were typically cheaper, with even some free offerings.

So I wrote a rails-like MVC framework in PHP. 

Including:
- Database migrations
- An ORM
- A somewhat db-agnosting query builder (Although only mysql was ever really supported)
- Configurable rendering, with rails-like default routes
- An autoloading system that I don't thing works?
- Actions that can respond with html-views, json and xml
- A custom error handler, displaying the line of code the error occurred in.
