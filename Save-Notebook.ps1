$hostName = [System.Net.Dns]::GetHostName()
$UtcTime = Get-Date 

function Save-Notebook {
   
    param ( [string]$mes = $UtcTime)
    git add .;
    git commit -m "$hostName : $mes"
    git push;
}

function check-repo {
    start "https://www.github.com"
}
