import '../lib/sdp_transform.dart' as sdp_transform;

void main() {


sdp_transform.parse(getTestData());

}

String getTestData()
{
  return """v=0
o=- 118690628 118690628 IN IP4 10.10.10.10
s=Asterisk
c=IN IP4 10.10.10.10
t=0 0
a=msid-semantic:WMS *
a=group:BUNDLE audio-0
m=audio 11414 UDP/TLS/RTP/SAVPF 8 18 101
a=connection:new
a=setup:actpass
a=fingerprint:SHA-256 98:1B:4C:A8:D2:48:0B:92:2F:5B:BF:DA:29:C1:EE:59:B7:4B:28:E7:89:47:31:FA:27:1F:06:01:1B:8C:4D:7B
a=ice-ufrag:7dac32e54888b96e16c4139647caba54
a=ice-pwd:307928eb41a2bde2294b5d0010397746
a=candidate:Ha00000e 1 UDP 2130706431 10.10.10.10 11414 typ host
a=candidate:H671d4072 1 UDP 2130706431 10.10.10.10 11414 typ host
a=candidate:Hac110001 1 UDP 2130706431 10.10.10.10 11414 typ host
a=rtpmap:8 PCMA/8000
a=rtpmap:18 G729/8000
a=fmtp:18 annexb=no
a=rtpmap:101 telephone-event/8000
a=fmtp:101 0-16
a=ptime:20
a=maxptime:150
a=sendrecv
a=rtcp-mux
a=ssrc:1241161643 cname:16d280ee-5d6e-4458-b10d-59aed9c7bc22
a=msid:a25d8ad4-0e42-41ef-aed5-1128713460c7 a77a9723-c5a3-449f-ad80-de91946498c0
a=rtcp-fb:* transport-cc
a=mid:audio-0
""";
}
