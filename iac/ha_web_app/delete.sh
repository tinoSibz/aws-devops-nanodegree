#!/bin/sh


aws cloudformation delete-stack \
--stack-name $1 \
--profile=learn-aws 