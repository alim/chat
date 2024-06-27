# Chat
This a sample chat room program used to learn Hotwire with Rails. It follows the 
[Hotwire Demo](https://medium.com/jungletronics/hotwire-demo-intro-12afa9eec059)
article series by [Jungletronics](https://medium.com/jungletronics). The `main`
branch includes code from all four tutorial articles. The branch code includes
changes upto and including the article episode (0 to 3).

# Development Envrionment.
The code should run in Devcontainer locally. We use VS Code with the devcontainer
plugin. It also runs in Codespace with some minor configuration changes. First,
you will need to _disable_ forgery protection by updating the `config/development.rb`
file:
```
  # Uncomment if you wish to allow Action Cable access from any origin.
  config.action_controller.allow_forgery_protection = false
```
Second you will need to add the codespace hostname to the `config/application.rb` 
file:
```
  config.hosts << 'reimagined-space-waffle-g4wjw57j9h9jw4-3000.app.github.dev'
```
This hostname gets assigned when you start up a Codespace and is unique for each 
Codespace that you create. Finally, don't forget to `db:migrate`, before you fire
up the application:
```
# bin/rails db:migrate
...
# bin/rails server
```