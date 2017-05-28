#!/bin/bash

createdb book
psql book -f create-datamodel.sql