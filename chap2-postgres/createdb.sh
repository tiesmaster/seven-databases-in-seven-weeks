#!/bin/bash

createdb book
psql book -c "CREATE EXTENSION cube;"

psql book -f create-datamodel.sql