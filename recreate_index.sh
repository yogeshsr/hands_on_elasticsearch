#!/bin/bash
set -e #exit on failure
set -x #echo on

base='./'

curl -H "Content-Type: application/json" -XDELETE 'localhost:9200/coupon/?pretty'
curl -H "Content-Type: application/json" -XPUT 'localhost:9200/coupon/?pretty' --data-binary "@"$base"index_settings.json"
curl -H "Content-Type: application/json" -XPOST 'localhost:9200/coupon/_bulk?filter_path=took,errors' --data-binary "@"$base"all_coupons.json"

printf "\n"