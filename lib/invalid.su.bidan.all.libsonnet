{
  "name": "invalid su/bidan/all",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('Status code is 403', function () {",
          "  pm.response.to.have.status(403);",
          "});",
          "pm.test('Request is forbidden', function () {",
          "  var response = pm.response.text();",
          "  pm.expect(response).to.eql('Forbidden');",
          "});"
        ],
        "type": "text/javascript"
      }
    },
    {
      "listen": "prerequest",
      "script": {
        "exec": [
          "const token = pm.environment.get('token');",
          "const invalidLength = Math.floor(token.length / 2);",
          "const invalidToken = token.substring(0, invalidLength);",
          "pm.environment.set('invalidToken', invalidToken);"
        ],
        "type": "text/javascript"
      }
    }
  ],
  "request": {
    "auth": {
      "type": "bearer",
      "bearer": [
        {
          "key": "token",
          "value": "{{invalidToken}}",
          "type": "string"
        }
      ]
    },
    "method": "GET",
    "header": [],
    "url": {
      "host": [
        "{{baseUrl}}"
      ],
      "path": [
        "api/su/bidan/all"
      ]
    }
  }
}
