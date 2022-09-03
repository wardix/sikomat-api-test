local validSuAuth = import 'lib/valid.su.auth.libsonnet';
local validSuSpesialisAll = import 'lib/valid.su.spesialis.all.libsonnet';
local invalidSuSpesialisAll = import 'lib/invalid.su.spesialis.all.libsonnet';
{
  info: {
    name: 'sikomat'
  },
  item: [
    validSuAuth,
    validSuSpesialisAll,
    invalidSuSpesialisAll
  ]
}
