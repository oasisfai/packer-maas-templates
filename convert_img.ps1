Write-Host 'Converting artifact to raw format'

$current_path = [string](Get-Location)
$input_artifact = $current_path + '.\output-hyperv-iso\Virtual Hard Disks\ubuntu-desktop.vhdx'
$output_img = $current_path + '.\output-hyperv-iso\Virtual Hard Disks\packer-qemu'

if ( Test-Path -Path $input_artifact -PathType leaf) {
	qemu-img convert -f vhdx -O raw $input_artifact  $output_img -p
}

else {
	Write-Host "artifact doesn't exist"
}
