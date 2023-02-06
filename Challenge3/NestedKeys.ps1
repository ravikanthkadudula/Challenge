function GetNestedValue ($obj, $key) {
# Split the key into an array of keys
$keys = $key.Split('/')
# Loop through each key and get the nested value
foreach ($k in $keys) {
$obj = $obj[$k]
}
# Return the final value
return $obj
}

$object = @{ "a" = @{ "b" = @{ "c" = "d" } } }
$key = "a/b/c"
$value = GetNestedValue $object $key
Write-Output "Value: $value"