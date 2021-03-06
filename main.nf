#! /usr/bin/env nextflow

println "\nI want to BLAST $params.query to $params.dbDir/$params.dbName using $params.threads CPUs and output it to $params.outdir"

process runBlast{

script:
"""
blastn  -num_threads $params.threads -db $params.dbDir/$params.dbName -query $params.query -outfmt $params.outfmt $params.options -out $params.outFileName
"""
}
