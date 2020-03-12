# README

To run this API in development...

1. Get an API (v3) key from https://www.themoviedb.org/settings/api
2. Clone the repo and add your key to the environment file.

```sh
git clone git@github.com:seanreads/the-movie-challenge-api.git api
cd api
cp .env.example .env    # Copy the example to a file named .env, then edit that file to use your key
```

Run it:

```sh
bundle 
rails s
```

You can find the front-end react app here: https://github.com/seanreads/the-movie-challenge-web
