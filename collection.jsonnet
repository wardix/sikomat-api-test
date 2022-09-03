local validSuAuth = import 'lib/valid.su.auth.libsonnet';
local validSuBidanAll = import 'lib/valid.su.bidan.all.libsonnet';
local invalidSuBidanAll = import 'lib/invalid.su.bidan.all.libsonnet';
{
  info: {
    name: 'sikomat'
  },
  item: [
    validSuAuth,
    validSuBidanAll,
    invalidSuBidanAll
  ]
}
