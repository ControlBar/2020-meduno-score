#!/bin/sh -x

COMP="--file=Spring Meeting 2020 Class 1"

fs-clean "$COMP"
fs-trim "$COMP"
fs-route "$COMP"
fs-arrival "$COMP"
fs-effort "$COMP"
fs-score "$COMP"

ft-extract-input "$COMP" --give-fraction=0.001 --give-distance=5 --haversines
ft-task-length "$COMP"
ft-fly-time "$COMP"
ft-cross-zone "$COMP"
ft-tag-zone "$COMP"

ft-unpack-track "$COMP"
ft-peg-frame "$COMP"
ft-align-time "$COMP"
ft-discard-further "$COMP"
ft-lead-area "$COMP"

ft-mask-arrival "$COMP"
ft-mask-bonus "$COMP"
ft-mask-effort "$COMP"
ft-mask-lead "$COMP"
ft-mask-reach "$COMP"

ft-land-out "$COMP"
ft-far-out "$COMP"
ft-gap-point "$COMP"

ft-comp-serve "$COMP"
