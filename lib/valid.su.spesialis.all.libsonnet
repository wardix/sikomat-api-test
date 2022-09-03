{
  "name": "valid su/spesialis/all",
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
