#Gets the ages of all the files in the current directory by subtracting the last write time from the current date and outputs the results to the end of a file or if the file doesn't exist: a new file.

$files = ls .
foreach ($file in $files) {
    $fileage = ((Get-Date) - $file.LastWriteTime)
    "$($file.name ) = $fileage" | Out-File -Append fileages.txt
    }
