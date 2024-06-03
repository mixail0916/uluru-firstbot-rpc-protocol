meta {
  name: Edit ACL
  type: http
  seq: 1
}

post {
  url: {{API_ROOT}}
}

headers {
  content-type: application/json
}

body {
  {
    "jsonrpc": "2.0+hl",
    "id": 1,
    "method": "cdr:bme:configuration:edit",
    "version": 1,
    "params": {
	   "association_id": "664dd24cdf1c12b240fc8e56",
		"resource": "association_bme+bme",
		"permission": "view",
		"access": "allow"
    },
    "auth": {
      "type": "{{AUTH_TYPE}}",
      "token": "{{HL_SESSION_TOKEN}}"
    }
  }
}

tests {
  test("status must be 200", function() {
    expect(response.status).to.eql(200);
  });
}
