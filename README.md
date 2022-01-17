# README

This is just a simple rails program which hopes to get me a position.

To test the interface you can do


      curl -X GET \
        http://localhost:3000//measurements \
        -H 'accept: application/json' \
        -H 'content-type: application/json'

      curl -X POST \
        http://localhost:3000//measurements \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        -d '{"name": "pressure", "unit":"g/l","upper_limit":"175","lower_limit":"130"}'

      curl -X PATCH \
        http://localhost:3000//measurements/1 \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        -d '{"name": "pressure1", "unit":"g/l","upper_limit":"175","lower_limit":"130"}'

      curl -X DELETE \
        http://localhost:3000//measurements/1 \
        -H 'accept: application/json' \
        -H 'content-type: application/json'
