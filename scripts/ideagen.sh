#!/bin/bash
docker run --name ideagen -d -p 80:80 -p 3306:3306 -v `pwd`/../db:/tmp cscdock/ideagen