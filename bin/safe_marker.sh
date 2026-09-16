#!/bin/sh
# Create the HW1 marker only when invoked with the required marker value.

if [ "$#" -ne 1 ] || [ "$1" != "course-marker" ]; then
    printf '%s\n' "Usage: $0 course-marker" >&2
    exit 1
fi

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
hw1_dir=$(CDPATH= cd -- "$script_dir/.." && pwd)
marker_dir="$hw1_dir/markers"
marker_file="$marker_dir/marker.txt"

mkdir -p -- "$marker_dir" || exit 1
: > "$marker_file" || exit 1
