#! /usr/bin/bash

cd ~/GitHub/slides/slides-arrow-latinr-2022
Rscript start_demo_server.R &
  quarto render index.qmd
