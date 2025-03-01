# README

This project contains the code I've written whilst following along with the
Hotrails Turbo Rails tutorial.

See <https://www.hotrails.dev/turbo-rails> for details.

## Ruby version

I'm using Rails 7.1 and Ruby 3.2.7. I did try Rails 7.0 (for which the tutorial
was written), but got an error during installation that I didn't fancy
investigating!

## System dependencies

The app expects you to have a Postgres server available, with hostname and
credentials provided via these three environment variables:

- `DB_HOST`
- `DB_USERNAME`
- `DB_PASSWORD`

I configure them for use locally using the excellent [direnv] utility, with
this `.envrc` file:

```
export DB_HOST=localhost
export DB_USERNAME=postgres
export DB_PASSWORD=postgres
```

[direnv]: https://github.com/direnv/direnv

I run Postgres via Docker, using the project's `docker-compose.yml` file. Once
you've got Docker installed, you should only need to run this command to pull
and launch Postgres:

```sh
docker compose up
```

## Database creation

Assuming you've got Postgres running and have configured the `DB_*` environment
variables (see above), run the setup script to create the dev and test
databases:

```sh
bin/setup
```

## How to run the test suite

To run the unit and integration tests:

```sh
bin/rails test
```

To run the system tests:

```sh
bin/rails test:system
```
