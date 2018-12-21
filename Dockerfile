FROM bitwalker/alpine-elixir:1.7.4

RUN apk add postgresql
RUN mkdir /run/postgresql
RUN chown postgres:postgres /run/postgresql
RUN su - postgres -c 'initdb /run/postgresql/postgres'

