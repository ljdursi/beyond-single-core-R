.PHONY: airlinedata idealgasdata stockdata

all: airlinedata idealgasdata stockdata

airlinedata:
	cd	data/airline
	./get-data
	cd ../..

idealgasdata:
	cd data/idealgas
	./makelarge
	cd ../..

stockdata:
	cd data/stocks/getdata
	./script
	Rscript combine.R
	cd ../../..

