#!/usr/bin/env bash
factor 600851475143 | sed 's/.*\: //; s/ /\n/g' | sort -n | tail -n 1
