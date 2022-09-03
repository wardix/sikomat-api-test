{
  "name": "invalid su/spesialis/all",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('debug', function () {",
          "  console.log(pm.response.text());",
          "});",
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
        "api/su/spesialis/all"
      ]
    }
  }
}
