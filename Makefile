# Makefile for downloading, filtering, and analyzing Birdwatch Community Notes data (Jan–Jul 2021)

# Final target
all: 05_final_report.Rmd

# Generate filtered notes dataset
notes_jan23_to_july31.tsv: 01_download_notes_data.sh 02_filter_notes_data.sh
	bash 01_download_notes_data.sh
	bash 02_filter_notes_data.sh

# Generate filtered ratings dataset
ratings_jan23_to_july31.tsv: 03_download_ratings_data.sh 04_filter_ratings_data.sh
	bash 03_download_ratings_data.sh
	bash 04_filter_ratings_data.sh

# Build the final report
05_final_report.Rmd: notes_jan23_to_july31.tsv ratings_jan23_to_july31.tsv


# Clean up intermediate files
clean:
	rm -f notes_jan23_to_july31.tsv ratings_jan23_to_july31.tsv
