all: collection.json env.json

collection.json: collection.jsonnet \
                 lib/valid.su.auth.libsonnet lib/invalid.su.auth.libsonnet \
                 lib/valid.su.stats.libsonnet lib/invalid.su.stats.libsonnet \
                 lib/valid.su.bidan.all.libsonnet lib/invalid.su.bidan.all.libsonnet \
                 lib/valid.su.bidan.search.libsonnet lib/invalid.su.bidan.search.libsonnet \
                 lib/valid.su.spesialis.all.libsonnet lib/invalid.su.spesialis.all.libsonnet 
	jsonnet --output-file collection.json collection.jsonnet


env.json: env.jsonnet
	jsonnet --output-file env.json env.jsonnet 

test: all
	newman run --environment env.json collection.json
	
clean:
	rm -f collection.json env.json
