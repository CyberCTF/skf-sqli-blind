#!/bin/sh
# Page 1 is found in the database, an unknown id is not.
set -e
H=http://web:5000
curl -fsS "$H/home/1" | grep -q "The welcome page"
! curl -fsS "$H/home/999" | grep -q "The welcome page"
