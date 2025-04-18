<!-- EXAMPLE -->

<h1>mirror</h1>

<p>werc .tpl file to mirror github raw content

<p>Mirrored from <a href=//github.com/christc4/mirror>GitHub</a>

<p><pre>git clone https://github.com/christc4/mirror.git</pre>

<p>Jump to:
% apilink=https://api.github.com/repos/christc4/mirror
% gitlink=https://raw.githubusercontent.com/christc4/mirror/refs/heads/main/
%	files=`{list-curl $apilink}
%		for(match in $files){
<a href=#%($"match%)>%($"match%)</a>
% }
<hr>
%	files=`{list-curl $apilink}
%		for(match in $files){
<h2><a name=%($"match%)>%($"match%)</a></h2>
<pre>
%			curl -L  $gitlink/$match | escape_html
</pre>
%		}


