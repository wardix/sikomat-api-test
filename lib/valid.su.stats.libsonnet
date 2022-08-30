{
  "name": "valid su/stats",
  "event": [
    {
      "listen": "test",
      "script": {
        "exec": [
          "pm.test('Status code is 200', function () {",
          "  pm.response.to.have.status(200);",
          "});",
          "pm.test('jumah_bidan is exists', function () {",
          "  var jsonData = pm.response.json();",
          "  pm.expect(jsonData).to.have.property('jumlah_bidan');",
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
        "api/su/stats"
      ]
    }
  }
}
