#!/bin/bash
apk add postgresql-client
npx wait-for-pg postgres://postgres:password@localhost:5432
PGPASSWORD=password psql -h localhost -U postgres -c "CREATE DATABASE app;"
node_modules/.bin/sequelize db:migrate
npm start

