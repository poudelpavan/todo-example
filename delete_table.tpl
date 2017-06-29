%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p>The open items are as follows.<br/>Do you want to delete?</p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  <form action="/delete/{{row[0]}}" method="delete">
    <td><input type="submit" name="delete" value="Delete"></td>
  </form>
  </tr>
%end
</table>
