@echo off
chcp 65001 1>nul 2>nul

::example.
::adds '--batch-file' and runs 'yt-dlp_conf_variation_audio_only_mp3_re_encoding_to_mp3_container.cmd'

call "%~sdp0yt-dlp_conf_variation_audio_only_mp3_re_encoding_to_mp3_container.cmd" %* --batch-file "%~sdp0\yt-dlp_conf_variation_audio_only_mp3_re_encoding_to_mp3_container__list.txt"
set "EXIT_CODE=%ErrorLevel%"

exit /b %EXIT_CODE%
