{
  "name": "valid su/auth",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('Status code is 200', function () {",
          "  pm.response.to.have.status(200);",
          "});",
          "pm.test('token is not empty', function () {",
          "  var jsonData = pm.response.json();",
          "  pm.expect(jsonData.token.length > 0).to.eql(true);",
          "  pm.environment.set('token', jsonData.token);",
          "});"
        ],
        "type": "text/javascript"
      }
    }
  ],
  "request": {
    "method": "POST",
    "header": [],
    "body": {
      "mode": "raw",
      "raw": "{\"username\": \"{{validUser}}\", \"password\": \"{{validPassword}}\"}",
      "options": {
        "raw": {
          "language": "json"
        }
      }
    },
    "url": {
      "host": [
        "{{baseUrl}}"
      ],
      "path": [
        "api/su/auth"
      ]
    }
  }
}
