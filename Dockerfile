
FROM alpine:latest

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\" 
ENV CONFIG_JSON3=\",\"alterId\":64}]},\"streamSettings\":{\"network\":\"ws\"}},\"inboundDetour\":[{\"protocol\":\"
ENV CONFIG_JSON4=\",\"port\":
ENV CONFIG_JSON5=,\"settings\":{\"method\":\"
ENV CONFIG_JSON6=\",\"password\":\"
ENV CONFIG_JSON7=\",\"udp\": false}],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 



RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
