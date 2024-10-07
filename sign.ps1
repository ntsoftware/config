# Get code signing script
$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert | Select-Object -First 1

# Sign profile script
Set-AuthenticodeSignature -FilePath profile.ps1 -Certificate $cert

# SIG # Begin signature block
# MIIFqQYJKoZIhvcNAQcCoIIFmjCCBZYCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUBJ/UGHI5Rko5t64jgrLxbSr1
# IMygggMwMIIDLDCCAhSgAwIBAgIQHlI3SLPFxr9DzwlWhKG/iTANBgkqhkiG9w0B
# AQsFADAuMSwwKgYDVQQDDCNQb3dlclNoZWxsIENvZGUgU2lnbmluZyBDZXJ0aWZp
# Y2F0ZTAeFw0yNDAyMjYxMjI1NTBaFw0yNTAyMjYxMjQ1NTBaMC4xLDAqBgNVBAMM
# I1Bvd2VyU2hlbGwgQ29kZSBTaWduaW5nIENlcnRpZmljYXRlMIIBIjANBgkqhkiG
# 9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoiaMuHpX0Ris6JsQ9LCls9lwLFW2OTh3aadF
# LREJgif8ho+Tr156Ci/RLakgU4wRsTsUhHo7fToE+s9aQPgMOTioI2isSObmlbSL
# ZhW3CDoCtpi927/mPetsPIt9p/KONNg+libTrJ3piK3FEB6cN37w5QaGQq/YIKhq
# TPrBsjV8cZkE6+C5ZHVaO60OGF61isJNsVsPolD5srkef0V4U7PMnVy1E7s2mAMp
# aibPTRJ1VtXubcl6Bn4tBpL6L7ZC9jHELAD5LYFioB3CAeJk2P8oFM6PFJWwDY4P
# 4tiTYXk3joTV61fw/qEhHK97chHznoPaSWXRJjBuHIIhGzSnJQIDAQABo0YwRDAO
# BgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFF1s
# +xIF8IeOJhHlfG236imNNXOtMA0GCSqGSIb3DQEBCwUAA4IBAQA2pEYuFxLYO1PD
# gTBcEH9Mmjm4b0z9sQeR8bKPMzEXun3CQSan3hfBCXOtKhvc27d68Ea/4xyyX6N7
# STUspRcw9zKh+vMz51HgryAFu84YcyoEmnfid+yeXb9qkB8R0EYwqrq2Is7bBK1l
# OoAeMIs1dDwop+aAx+gbgWh31KbI5k54bEGUc0d5KsK0k2nGeGMFnsozyEpSNBOW
# 1u4FxmJ3cg3oCDj7KkcOQe54c++/OSeZydq8OAB/IjXxO5kVMOCAaRDYyFAlDwui
# RzDE649hAzp3WgxMS9r6XAU6miQ4fDeavKZTEBOozY+7xKgCMCtbDQZqofNpyo+5
# MW0qlpPQMYIB4zCCAd8CAQEwQjAuMSwwKgYDVQQDDCNQb3dlclNoZWxsIENvZGUg
# U2lnbmluZyBDZXJ0aWZpY2F0ZQIQHlI3SLPFxr9DzwlWhKG/iTAJBgUrDgMCGgUA
# oHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYB
# BAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0B
# CQQxFgQUdLxsN5ki5fB1KYdpnjFZg3TfrQwwDQYJKoZIhvcNAQEBBQAEggEAFF5Q
# XXM5lX8rMPXzv6xnkYWPT+SxyAqjyFpG8RPUqrUQ7X8XGwghLzTICMx2/MajY1Cf
# 86dVejjk0k1y4ZMxM3CY9SaVkwLq5eZtFaFSWS07JixI1xBEK3EYrFHcxM1N6MUH
# OGAqO6EpSusOEMVBgCeS4u8L/sTEe+S8ERn2AuMeYV1BwcbfN7zJOBrnoj04pbul
# Fun0YUKavc6bEAxj/tfr/FW0Hmwxb774+EVzI4amutfCW+VmflvUWSmOqw07ZuVE
# WryGTWreLKms4GGn1GhfHE1kF4PMqHt1Z20xCZjpaqCN5goOxROnc9xdXXWwX98C
# NZNaD9KXFp9t/bZ7YA==
# SIG # End signature block