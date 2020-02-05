# Cucumber Examples
[Cucumber](https://cucumber.io) is a tool that is useful for those who practice [Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development). 

The behavior is specified as a set of features, which are implemented as step definitions. The step definitions then exercise and inspect the system under test.

# ![Cucumber Overview](https://github.com/mdoel/cucumber_examples/raw/master/overview.png)

This repository is useful for someone looking to learn a bit of cucumber by example:

- The `ruby` directory has an example that is the result of following the 10 minute tutorial on the Cucumber site, with the production code and test code put into separate files.
- The `java` directory is a similar example, but with step definitions written in Java and features executed with Maven.
- The `google` example shows how you can use WebDriver and its API to do a very simple test against a Google search.
- The `sinatra` example demonstrates a minimal ruby web app being exercised with the Rack::Test driver and [Capybara](https://github.com/teamcapybara/capybara) gem.
- The `dadjoke` example is a more complete sinatra example that includes several features. It also shows how the [VCR gem](https://github.com/vcr/vcr) can be used to isolate running the test from the icanhazdadjoke API used for content.
- The `full` example is an extension of `dadjoke`.