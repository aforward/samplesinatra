# samplesinatra

A simple application showing some capabilities of Ruby and Sinatra as a web framework.  Follow the tags to see it progress from Hello World, to something a bit more advanced.

## Set Up

Let's clone the project

```
git clone git@github.com:aforward/samplesinatra.git
```

Or

```
git clone https://github.com/aforward/samplesinatra.git
```

Next you will need ruby. Check out [the many ways to install ruby](https://www.ruby-lang.org)

Check out `setup.sh` for the other things that the project will install before getting going (namely bundler and then installing dependent gems in the Gemfile)

```
./setup.sh
```

## Run

You can start your server by running

```
./server.sh
```

Inside we are just running the default sinatra web server via bundler; not ideal for production; but this project is more about the framework and less about deployment.

In the startup logs, you will see where things are running, similar to

```
[2017-01-18 12:30:00] INFO  WEBrick 1.3.1
[2017-01-18 12:30:00] INFO  ruby 2.4.0 (2016-12-24) [x86_64-darwin16]
== Sinatra (v2.0.0.beta2) has taken the stage on 4567 for development with backup from WEBrick
[2017-01-18 12:30:00] INFO  WEBrick::HTTPServer#start: pid=31660 port=4567
```

We should now be able to see our web app in the browser at

```
http://localhost:4567
```