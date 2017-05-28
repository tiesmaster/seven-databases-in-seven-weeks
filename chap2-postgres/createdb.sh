#!/bin/bash

createdb book
psql book -c "CREATE EXTENSION cube;"