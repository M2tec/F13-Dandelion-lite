#!/bin/bash

set -x 

curl 'https://mainnet-moonflower.m2tec.nl/cardano-graphql' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Connection: keep-alive' -H 'DNT: 1' -H 'Origin: https://mainnet-moonflower.m2tec.nl' --data-binary '{"query":"query GetUtxosByPolicyId($policyId: Hash28Hex!) {\n  utxos(where: { tokens: { asset: { policyId: { _eq: $policyId } } } }) {\n    address\n  }\n}","variables":{"policyId":"56dc578b51e07227fab63051fb72366d7d8e10e46d17f26090db9280"}}' --compressed