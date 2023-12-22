$disks = Get-CimInstance Win32_LogicalDisk
foreach ($disk in $disks){
    $size = $disk.Size
    $diskspace = $disk.FreeSpace
    $diskpercent  = "{0:N2}" -f (($diskspace/$size )*100)
    $diskdriveletter = $disk.DeviceID

    if ($diskpercent -lt 10){
        
        Write-host "$diskdriveletter => Critical" -ForegroundColor Red -BackgroundColor Black
    }
elseif ($diskpercent -lt 09) {
        Write-Warning "$diskdriveletter => Warning"
    }
    else{
        Write-Host "$diskdriveletter => Healthy"
    }
}
