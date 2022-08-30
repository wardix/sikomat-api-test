{
  "name": "valid su/spesialis/all",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('Status code is 200', function () {",
          "  pm.response.to.have.status(200);",
          "});",
          "pm.test('data is exists', function () {",
          "  var jsonData = pm.response.json();",
          "  pm.expect(jsonData.page).to.have.property('data');",
          "});"
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
          "value": "{{token}}",
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
