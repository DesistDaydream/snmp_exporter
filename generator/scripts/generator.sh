
# 生成认证信息
CGO_ENABLED=1 go run main.go config.go net_snmp.go tree.go  generate \
 -m mibs \
 --generator-path="generator/generator-auths.yaml" \
 --output-path="snmps/snmp-auths.yml"

# 生成 snmp 配置
export BRAND="host-inspur"
docker run -it --rm \
  -v "${PWD}:/opt/" \
  prom/snmp-generator generate \
  -m mibs/${BRAND} -m mibs \
  --generator-path="generator/generator-${BRAND}.yaml" \
  --output-path="snmps/snmp-${BRAND}.yml"

export BRAND="npb-optiway"
CGO_ENABLED=1 go run main.go config.go net_snmp.go tree.go  generate \
 -m mibs/${BRAND} -m mibs \
 --generator-path="generator/generator-${BRAND}.yaml" \
 --output-path="snmps/snmp-${BRAND}.yml"
