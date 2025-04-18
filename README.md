# mirror

this is a way to mirror RAW content from your github repo 

GitHub repos (via REST API) return structured JSON describing each file/folder at a path, including things like file name, size, type, download URL, etc.

If you just want the names of all files in the root directory, this script returns that

dependencies 

- curl: to fetch the data
- jq: to filter out just the file names



