export BRAND="inspur"
docker run -it --rm \
  -v "${PWD}:/opt/" \
  prom/snmp-generator generate \
  -m mibs/${BRAND} -m mibs \
  --generator-path="generator/generator-${BRAND}.yaml" \
  --output-path="snmp/snmp-${BRAND}.yml"

export BRAND="inspur"
CGO_ENABLED=1 go run main.go config.go net_snmp.go tree.go  generate \
  -m mibs/${BRAND} -m mibs \
 --generator-path="generator/generator-${BRAND}.yaml" \
 --output-path="snmp/snmp-${BRAND}.yml"