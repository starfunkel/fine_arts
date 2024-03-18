
Clear-Host
$colors = 'Blue', 'Cyan', 'DarkBlue', 'DarkCyan', 'DarkGray', 'DarkGreen', 'DarkMagenta', 'DarkRed', 'DarkYellow', 'Gray', 'Green', 'Magenta', 'Red', 'White', 'Yellow'
$text = "Merry Christmas !"

foreach ($char in $text.ToCharArray()) {
    $color = Get-Random -InputObject $colors
    Write-Host $char -ForegroundColor $color -NoNewline
}

Write-Host ""

$colors = "Cyan","Green","Yellow","Red","Magenta","White"
$treeheight = 20
$stumpheight = 2

Clear-Host
Tree
$treewidth = 1
for($i=1; $i -le $treeheight; $i++)
{
  for ($j=1; $j -le ($treeheight - $treewidth); $j++)
{
Write-Host " " -nonewline
}
for ($j=1; $j -le ($treewidth*2-1); $j++)
{
  If($j % 2)
  {
    Write-Host "*" -ForegroundColor Darkgreen -nonewline
  }
  Else
  {
    Write-Host "*" -ForegroundColor ($colors | get-random) -nonewline
  }
}
Write-Host " "
$treewidth++
}
Stump
$stumpwidth = $treeheight / 5
If ($stumpwidth % 2)
  {
    #Do nothing
  }
  Else
  {
    $stumpwidth = $stumpwidth+1
  }
for ($k=1; $k -le ($stumpheight); $k++)
{
  for ($l=1; $l -le ($treeheight - ($stumpwidth/2));$l++)
  {
    Write-Host " " -nonewline
  }
  for ($m=1; $m -le $stumpwidth; $m++)
  {
    Write-Host "*" -ForegroundColor Darkgreen -nonewline
  }
  Write-Host " "
}
Write-Host "            Merry Christmas"
