#!/bin/bash

docker rmi php:7.0-cli

docker build -t php .
