## Plain Rack Application

Just send a response 200 ok.

Displays rack environment values.

## Usage

Try this app with

`$ rackup`

## Rack mehods

```
workspace/plain_rack - [masterU] (′•_•) be rackup

From: ~/workspace/plain_rack/config.ru @ line 40 :

    35:   title + ['<p>Sorry, We could not found a requested page...</p>']
    36: end
    37:
    38: binding.pry
    39:
 => 40: run res

[1] pry(#<Rack::Builder>)> ls
Rack::Builder#methods: call  map  run  to_app  use  warmup
self.methods: about  header  index  not_found  res  title
instance variables: @map  @run  @use  @warmup
locals: _  __  _dir_  _ex_  _file_  _in_  _out_  _pry_  str  version
```
