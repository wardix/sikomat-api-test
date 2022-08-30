{
  "name": "invalid su/auth",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('Status code is 200', function () {",
          "  pm.response.to.have.status(200);",
          "});",
          "pm.test('token is empty', function () {",
          "  var jsonData = pm.response.json();",
          "  pm.expect(jsonData.token).to.be.empty;",
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
      "raw": "{\"username\": \"{{invalidUser}}\", \"password\": \"{{invalidPassword}}\"}",
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
