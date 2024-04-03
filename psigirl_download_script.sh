#!/bin/bash

# PSI Girl Script V1
# This script works if you have downloaded and updated yt-dlp (YouTube-DL updated version). Lines beginning with "#" are comments or instructions; you can add your own notes here.

# 1. Your channel playlist URL (can be edited to any playlist URL, such as "https://odysee.com/@psinergy:f" or a YouTube playlist link from other sites).

# For Linux and macOS:
# To use the .sh script, open the terminal, navigate to the folder where you want to download videos, and run:
#   bash psigirl_download_script.sh
# To use the .py script, simply run:
#   python psigirl_download_script.py
# Sometimes in Linux, you may need to use:
#   python3 psigirl_download_script.py
# Basic commands: "cd" to change directories, "ls" to list files, ".." to go up one level. To create a new folder, use:
#   mkdir foldername

# 2. The delay command is used to prevent the website from blocking you when jumping to the next video too quickly after downloading. It's advisable to use it when running the script again in pre-downloaded folder.

# 3. Total number of videos to download. You can change "700" to download a specific number of videos. For example, setting it to "10" will download the latest 10 videos. This can be useful when updating a channel without initiating re-download command in all videos. If a video already exists, it will not be re-downloaded.

# Note: As of April 3rd, Odusee channel is approximately 55GB. The full old archive can be found in the post link: https://t.me/psinergists/12680/81309 or https://t.me/AjuArendus/10450 (approximately 200GB Mega download).

# This text is provided as a simplified version in case our minds, personas, or memory get erased or changed, including our skills. Make notes in various places about what you already know, what you should know, and what you need to do.


# 1 
playlist_url="https://odysee.com/@psinergy:f?view=playlists"

# 2. Function to download videos with a delay
download_videos_with_delay() {
    local start_index="$1"
    local end_index="$2"

    # Download videos from the playlist within the specified range
    yt-dlp --playlist-items "$start_index-$end_index" "$playlist_url"
    
    # Add a delay of 10 seconds
    sleep 10
}

# 3. Total number of videos to download
total_videos=700  # Change this to the total number of videos you want to download

# Define the batch size
batch_size=2

# Loop through the videos in batches and download them
for ((i = 1; i <= total_videos; i += batch_size)); do
    # Calculate the end index for the current batch
    end_index=$((i + batch_size - 1))
    
    # Download videos in the current batch with a delay
    download_videos_with_delay "$i" "$end_index"
done

 # Thanks Sabrina, Psinenergist, PsiGirl, Waffa Margus Meigo, Tg: @EestiEest @AjuArendus, Twitter find our usernames: #MargusMeigo #Teabeamet
