# Define the URI for the Azure metadata service
$metadataUri = "http://169.254.169.254/metadata/instance?api-version=2021-01-01"

# header for the metadata request
$metadataHeader = @{
  "Metadata" = "true"
}

# Get the metadata for the instance
$metadata = Invoke-WebRequest -Uri $metadataUri -Headers $metadataHeader -Method GET

# Convert the response to JSON format
$metadataJson = $metadata.Content | ConvertFrom-Json

# retrieve a specific data key
if ($args[0]) {
  $dataKey = $args[0]
  Write-Output $metadataJson.$dataKey
} else {
  # Output full metadata in JSON format
  Write-Output $metadataJson | ConvertTo-Json
}


#$instJSON=Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01" | ConvertTo-Json
