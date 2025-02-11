del alias:cd -force
del alias:gc -force
del alias:gl -force
del alias:gp -force
del alias:gv -force

function Invoke-GitAdd {
    git add @args
}

function Invoke-GitAddPatch {
    git add --patch @args
}

function Invoke-GitCommit {
    git commit @args
}

function Invoke-GitCommitAmend {
    git commit --amend @args
}

function Invoke-GitCommitFixup {
    git commit --fixup @args
}

function Invoke-GitCheckout {
    git checkout @args
}

function Invoke-GitDiff {
    git diff @args
}

function Invoke-GitDiffCached {
    git diff --cached @args
}

function Invoke-GitLog {
    git log @args
}

function Invoke-GitLogOneline {
    git log --oneline @args
}

function Invoke-GitLogOnelineGraph {
    git log --oneline --graph @args
}

function Invoke-GitPush {
    git push @args
}

function Invoke-GitPushTags {
    git push --tags @args
}

function Invoke-GitRebaseInteractive {
    git rebase --interactive --autosquash @args
}

function Invoke-GitStatus {
    git status @args
}

function Invoke-Vim {
    vim @args
}

function Invoke-VimGui {
    gvim @args
}

function Invoke-Ninja {
    ninja @args
}

function Invoke-Explorer {
    explorer . @args
}

function Invoke-VisualStudioCode {
    code . @args
}

function Invoke-RustupDoc {
    rustup doc --std @args
}

function Invoke-WSL {
    wsl --user nit --cd ~
}

set-alias -name ga -value Invoke-GitAdd
set-alias -name gap -value Invoke-GitAddPatch
set-alias -name gc -value Invoke-GitCommit
set-alias -name gca -value Invoke-GitCommitAmend
set-alias -name gcf -value Invoke-GitCommitFixup
set-alias -name gco -value Invoke-GitCheckout
set-alias -name gd -value Invoke-GitDiff
set-alias -name gdc -value Invoke-GitDiffCached
set-alias -name gl -value Invoke-GitLog
set-alias -name glo -value Invoke-GitLogOneline
set-alias -name glog -value Invoke-GitLogOnelineGraph
set-alias -name gp -value Invoke-GitPush
set-alias -name gpt -value Invoke-GitPushTags
set-alias -name gri -value Invoke-GitRebaseInteractive
set-alias -name gs -value Invoke-GitStatus
set-alias -name vi -value Invoke-VimGui
set-alias -name gv -value Invoke-VimGui
set-alias -name n -value Invoke-Ninja
set-alias -name e -value Invoke-Explorer
set-alias -name c -value Invoke-VisualStudioCode
set-alias -name rud -value Invoke-RustupDoc
set-alias -name w -value Invoke-WSL

# Disable prediction completion while typing
Set-PSReadLineOption -PredictionSource None

# Custom color theme
# See https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_ansi_terminals
$PSStyle.fileinfo.Directory="$($PSStyle.Foreground.BrightWhite)$($PSStyle.Bold)"

# Set default fuzzy finder command
$Env:FZF_DEFAULT_COMMAND = "fd"

# Set default fuzzy finder options
$Env:FZF_DEFAULT_OPTS = "--layout reverse --height 40%"

# Set default locale
$Env:LC_ALL = "en_US.UTF-8"

# Import posh-git
import-module posh-git

# Initialize zoxide
invoke-expression (& { (zoxide init powershell | out-string) })

set-alias -name cd -value __zoxide_z
set-alias -name cdi -value __zoxide_zi

# SIG # Begin signature block
# MIIFzgYJKoZIhvcNAQcCoIIFvzCCBbsCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBcftHXh4pC0FWG
# OeS5S9Wculgg0vNvz8mKFma0x8pCNKCCAzAwggMsMIICFKADAgECAhAeUjdIs8XG
# v0PPCVaEob+JMA0GCSqGSIb3DQEBCwUAMC4xLDAqBgNVBAMMI1Bvd2VyU2hlbGwg
# Q29kZSBTaWduaW5nIENlcnRpZmljYXRlMB4XDTI0MDIyNjEyMjU1MFoXDTI1MDIy
# NjEyNDU1MFowLjEsMCoGA1UEAwwjUG93ZXJTaGVsbCBDb2RlIFNpZ25pbmcgQ2Vy
# dGlmaWNhdGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCiJoy4elfR
# GKzomxD0sKWz2XAsVbY5OHdpp0UtEQmCJ/yGj5OvXnoKL9EtqSBTjBGxOxSEejt9
# OgT6z1pA+Aw5OKgjaKxI5uaVtItmFbcIOgK2mL3bv+Y962w8i32n8o402D6WJtOs
# nemIrcUQHpw3fvDlBoZCr9ggqGpM+sGyNXxxmQTr4LlkdVo7rQ4YXrWKwk2xWw+i
# UPmyuR5/RXhTs8ydXLUTuzaYAylqJs9NEnVW1e5tyXoGfi0GkvovtkL2McQsAPkt
# gWKgHcIB4mTY/ygUzo8UlbANjg/i2JNheTeOhNXrV/D+oSEcr3tyEfOeg9pJZdEm
# MG4cgiEbNKclAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQUXWz7EgXwh44mEeV8bbfqKY01c60wDQYJKoZIhvcN
# AQELBQADggEBADakRi4XEtg7U8OBMFwQf0yaObhvTP2xB5Hxso8zMRe6fcJBJqfe
# F8EJc60qG9zbt3rwRr/jHLJfo3tJNSylFzD3MqH68zPnUeCvIAW7zhhzKgSad+J3
# 7J5dv2qQHxHQRjCqurYiztsErWU6gB4wizV0PCin5oDH6BuBaHfUpsjmTnhsQZRz
# R3kqwrSTacZ4YwWeyjPISlI0E5bW7gXGYndyDegIOPsqRw5B7nhz7785J5nJ2rw4
# AH8iNfE7mRUw4IBpENjIUCUPC6JHMMTrj2EDOndaDExL2vpcBTqaJDh8N5q8plMQ
# E6jNj7vEqAIwK1sNBmqh82nKj7kxbSqWk9AxggH0MIIB8AIBATBCMC4xLDAqBgNV
# BAMMI1Bvd2VyU2hlbGwgQ29kZSBTaWduaW5nIENlcnRpZmljYXRlAhAeUjdIs8XG
# v0PPCVaEob+JMA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcCAQwxCjAIoAKA
# AKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIOZbTL/CqMQJtFvsAKhmIc4e
# Isg7I6CXWZ2kgTXVtknoMA0GCSqGSIb3DQEBAQUABIIBAEkA7o09cva+sY/7oz2b
# Udi0CE6hZmdGEB0BC8209+xyblSnNeMptuGgnMjsZe6HaL2Zu3s7qp9dORaUUiLu
# IGbJVAaa1FirL1z3pbs9A1Fb+5B0/oj0EyrKs4YTZGPLPJxAeQTGysfBrFefi/Uq
# r/EfIyfgGys+7CL3guztOrmDwUmKFzZHufvgxHyffK7WJL8J6nBLBEN3PybDtRRa
# Q/TwDRkwBXbB01BHIpO3dIKXyoPUX5DD8Of72v/Lo2BXt/84v9MpsFjnQ26Gmluu
# YF9+kXCKnb7PgzU0Aehvm0WV9lQSXM8nqR7jz7bDwY2Rw/X9DstJWmHXjjCv3uEg
# Lho=
# SIG # End signature block
