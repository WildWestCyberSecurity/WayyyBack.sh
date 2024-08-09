#!/bin/bash

usage() {
    echo "Usage: $0 -d domains.txt -o wayback_urls.txt"
    exit 1
}

while getopts ":d:o:" opt; do
    case ${opt} in
        d)
            input=$OPTARG
            ;;
        o)
            output=$OPTARG
            ;;
        \?)
            usage
            ;;
    esac
done

if [ -z "$input" ] || [ -z "$output" ]; then
    usage
fi

> $output  # Clear the output file

while IFS= read -r domain
do
    echo "Fetching URLs for: $domain"
    echo "Fetching URLs for: $domain" >> $output
    echo $domain | waybackurls >> $output
    echo "" >> $output
done < "$input"

echo "All URLs have been written to $output"
