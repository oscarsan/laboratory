# README

This is just a simple rails program which hopes to get me a position. This is now 
deployed to heroku so all localhost:3000 can be replaced by http://laboratory.hashdot.fi/

To test the interface you can do


      curl -X GET \
        http://laboratory.hashdot.fi/measurements \
        -H 'accept: application/json' \
        -H 'content-type: application/json'

      curl -X POST \
        http://laboratory.hashdot.fi/measurements \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        -d '{"name": "pressure", "unit":"g/l","upper_limit":"175","lower_limit":"130"}'

      curl -X PATCH \
        http://laboratory.hashdot.fi/measurements/1 \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        -d '{"name": "pressure1", "unit":"g/l","upper_limit":"175","lower_limit":"130"}'

      curl -X DELETE \
        http://laboratory.hashdot.fi/measurements/1 \
        -H 'accept: application/json' \
        -H 'content-type: application/json'
