%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p><b>The open items are as follows:</b></p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  </tr>
%end
</table>
<br/>
<span>
<form action="/new" method="get">
    <td><input type="submit" name="new" value="Add New Item"></td>
</form>
<form action="/edit" method="get">
    <td><input type="submit" name="edit" value="Edit Items"></td>
</form>
<form action="/delete" method="get">
    <td><input type="submit" name="delete" value="Delete Items"></td>
</form></span>

