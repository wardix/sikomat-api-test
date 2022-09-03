{
  "name": "invalid su/auth",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('debug', function () {",
          "  console.log(pm.response.text());",
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
