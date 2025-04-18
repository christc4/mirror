<!-- EXAMPLE -->

<p>Mirrored from <a href=//github.com/christc4/search>GitHub</a>

% gitlink=https://raw.githubusercontent.com/christc4/search/refs/heads/main/
% apilink=https://api.github.com/repos/christc4/search

<p>Jump to:
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


