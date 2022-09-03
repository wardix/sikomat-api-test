local validSuAuth = import 'lib/valid.su.auth.libsonnet';
local invalidSuAuth = import 'lib/invalid.su.auth.libsonnet';
{
  info: {
    name: 'sikomat'
  },
  item: [
    validSuAuth,
    invalidSuAuth
  ]
}
