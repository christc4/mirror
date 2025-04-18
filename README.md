# mirror

this is a werc .tpl page to mirror RAW content from your github repo, using the provided list-curl.sh script

GitHub repos (via REST API) return structured JSON describing each file/folder at a path, including things like file name, size, type, download URL, etc.

If you just want the names of all files in the root directory, the script list-curl.sh returns that

dependencies 

- curl: to fetch the data
- jq: to filter out just the file names

see <https://bauherren.ovh/dump/kode/christos/werc/tpl/mirror/> for an example
