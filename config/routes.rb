Rails.application.routes.draw do

  # Welcome to our rails app!
  # When someone browses to our website, for example by typing:
  # school-tracker.adadeveloperscademy.org into their browser's URL bar
  # the browser automatically translates this to:
  #
  # http://school-tracker.adadeveloperscademy.org/
  #  ^      \----------------------------------/ ^
  #  |                      |                    |
  #  Protocol             Host                  Path
  #
  # These are the parts of the URL that tell your browser how to communicate
  # with our Rails app.
  #
  # Protocol: This indicates that the browser should start a conversation using
  # the HTTP protocol (language). Alternatives would be mailto (for starting an
  # email) and ftp (the File Transfer Protocol, used for downloading and
  # uploading files).
  #
  # Host: This indicates what computer the browser should have a conversation
  # with. Computers accessible via the Internet use either a domain name (shown
  # here) or an IP address (a sequence of numbers).
  # You also have a special domain name and IP address that means "whatever
  # computer the browser is running on". That domain is "localhost" and the IP
  # address is 127.0.0.1.
  #
  # Path: This represents what information the browser is talking about in its
  # conversation. The path is primarily of use to the Rails app running on the
  # Host computer, although paths are often named in such a way that they have
  # meaning for the user of the website as well.
  #
  #
  # HTTP verbs
  # When the browser connects to the Host computer via HTTP, it sends the path
  # information as the beginning of the conversation. In addition, it sends
  # something called an "HTTP Verb". This is the browser's way of telling the
  # Rails app what it wants to do with the path.
  #
  # For example: The browser could say "I want to *get* the webpage that you
  # (the Rails app) associate with this path." For that, the browser would use
  # the GET verb. The Rails app would then *respond* with whatever information
  # it thought was relevant for that path.
  #
  # Alternatively, the browser could say "I want to *give* you information for
  # this path." In that case, the browser would use the POST verb. The Rails
  # app would then be responsible for taking that information and figuring out
  # what to do with it, and possibly *respond* with more information for the
  # browser.
  #
  # Inside of our Rails app's code, we create "routes" which are a combination
  # of a path and a verb. These routes are our way of defining what particular
  # paths we know about / care about, and the verbs we will let the browser
  # say when talking about those paths.
  #
  # When we define a route we also tell Rails what code to run in order to
  # give a "response" back to the browser. That code always lives in a
  # "controller" class, as a particular method, known as an "action".
  #
  # Example:
  # get   "/", to: "welcome#home"
  #  ^     ^         ^        ^
  #  |     |         |         \
  # verb  path     controller   action
  #
  # Here we ahve defined a route for the "/" path. It only allows the browser
  # to use the GET verb with it.
  # The "to:" portion means, when the browser starts a conversation and tells
  # us "GET /", then Rails will run the code that it finds in:
  # class WelcomeController
  #   def home
  #     # This code here
  #   end
  # end
  #
  #
  # NOTE:
  # The above route definition is actually a method call! We can write it out
  # completely as:
  # get("/", { to: "welcome#home" })
  # Try uncommenting the above line to see that it also works.
end
