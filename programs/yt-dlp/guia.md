*****### Comando para bajar música de youtube con yt-dlp*****

```bash
 yt-dlp -x --audio-format mp3 \
  --embed-thumbnail \
  --add-metadata \
  --metadata-from-title "%(artist)s - %(title)s" \
  --no-playlist \
'link del video de youtube'
```
