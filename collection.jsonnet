local validSuAuth = import 'lib/valid.su.auth.libsonnet';
local invalidSuAuth = import 'lib/invalid.su.auth.libsonnet';
local validSuStats = import 'lib/valid.su.stats.libsonnet';
local invalidSuStats = import 'lib/invalid.su.stats.libsonnet';
local validSuBidanAll = import 'lib/valid.su.bidan.all.libsonnet';
local invalidSuBidanAll = import 'lib/invalid.su.bidan.all.libsonnet';
local validSuBidanSearch = import 'lib/valid.su.bidan.search.libsonnet';
local invalidSuBidanSearch = import 'lib/invalid.su.bidan.search.libsonnet';
local validSuSpesialisAll = import 'lib/valid.su.spesialis.all.libsonnet';
local invalidSuSpesialisAll = import 'lib/invalid.su.spesialis.all.libsonnet';
{
  info: {
    name: 'sikomat'
  },
  item: [
    validSuAuth,
    validSuStats,
    invalidSuStats
  ]
}
