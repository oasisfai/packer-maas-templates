Write-Host 'Convert artifact to raw image'

$input_artifact = '.\output-hyperv-iso\Virtual Hard Disks\ubuntu-desktop.vhdx'
$output_img = ".\output-hyperv-iso\Virtual Hard Disks\packer-qemu"

if ( Test-Path -Path $file -PathType leaf) {
	qemu-img convert -f vhdx -O raw $input_artifact  $output_img -p
}

else {
	Write-Host "artifact doesn't exist"
}