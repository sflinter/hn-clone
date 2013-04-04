# Description:

Create a minimally functional HackerNews clone.

# Basic Features:

* Submit link with name, url and manually entered username (user auth is optional)
* Vote up a link on the index page (anonymous)
* Submit comment for Link with manually entered username

# Notes

This is an _extremely_ simple HackerNews clone.

To install:

```$ bundle
$ rake db:migrate
```

Optionally, to create a number of sample posts:

```$ rake app:populate```

To run the specs:

```$ rake spec```