# Description:

Create a minimally functional HackerNews clone.

# Basic Features:

* Submit link with name, url and manually entered username (user auth is optional)
* Vote up a link on the index page (anonymous)
* Submit comment for Link with manually entered username

# Installing

This is an _extremely_ simple HackerNews clone.

To install:

```
$ bundle
$ rake db:migrate
```

Optionally, to create a number of sample posts:

```$ rake app:populate```

To run the specs:

```$ rake spec```

# Notes

The voting mechanism here is very simple - the homepage just shows the
top listed posts, ordered by the number of votes. This differs from
HN, which automatically degrades the number of points over time. A
more sophisticated clone would need to calculate those points, and
update them over time (e.g. every hour.