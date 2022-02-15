Add-Type -AssemblyName System.Windows.Forms

If ([Windows.Forms.Clipboard]::ContainsImage() -eq $True) {
  $Image = [Windows.Forms.Clipboard]::GetImage()
  $FilePath = "C:\Users\tie306883\Documents\capture"
  $FileName = (Get-Date -Format "yyyyMMddHHmmss") + ".png"
  $ImagePath = Join-Path $FilePath $FileName
  $Image.Save($ImagePath, [System.Drawing.Imaging.ImageFormat]::Png)
}