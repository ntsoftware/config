# Configuration files

## Windows

Install [Chocolatey package manager](https://chocolatey.org/install)

In an administrative command prompt:

    choco install -y [PACKAGES]

Where PACKAGES are:

- `alacritty`
- `cmake`
- `dos2unix`
- `fd`
- `fzf`
- `git`
- `jq`
- `less`
- `make`
- `ninja`
- `ripgrep`
- `scc`
- `sed`
- `vim`

In a regular command prompt:

    install.bat

## Vim themes

```sh
mkdir -p vim/pack/themes/start
cd vim/pack/themes/start
git clone --depth 1 https://github.com/dracula/vim.git dracula
```

## Vim plugins

```sh
mkdir -p vim/pack/plugins/start
cd vim/pack/plugins/start
git clone --depth 1 [plugin-repo]
```

- [ale](https://github.com/dense-analysis/ale.git)
- [fzf](https://github.com/junegunn/fzf.git)
- [fzf.vim](https://github.com/junegunn/fzf.vim.git)
- [rust.vim](https://github.com/rust-lang/rust.vim)
- [vim-airline](https://github.com/vim-airline/vim-airline.git)

Generate help tags after installing the plugins:

    :helptags ALL<CR>

## PowerShell

### Get help

Download help contents
In an administrative shell:

    Update-Help -UICulture en-US

### Environment variables

Get environment variable:

    $Env:<variable-name>

Set environment variable:

    $Env:<variable-name> = "<new-value>"

Display environment variables:

    dir Env:\

### Install PowerShell profile

```powershell
mkdir (Split-Path $PROFILE)
cp ./profile.ps1 $PROFILE
```

### Install PowerShell git

[posh-git documentation](https://github.com/dahlbyk/posh-git/blob/v1.1.0/README.md)

    Install-Module posh-git -Scope CurrentUser

Sign all files in `$HOME\Documents\WindowsPowerShell\Modules\posh-git`

```powershell
pushd $HOME\Documents\WindowsPowerShell\Modules\posh-git\1.1.0
$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert | Select-Object -First 1
Set-AuthenticodeSignature -FilePath *.ps1 -Certificate $cert
Set-AuthenticodeSignature -FilePath *.psd1 -Certificate $cert
Set-AuthenticodeSignature -FilePath *.psm1 -Certificate $cert
popd
```

Import the `posh-git` module into a PowerShell session:

    Import-Module posh-git

### Create a self-signed certificate

```powershell
$params = @{
    Subject = 'CN=PowerShell Code Signing Certificate'
    Type = 'CodeSigningCert'
    CertStoreLocation = 'Cert:\CurrentUser\My'
    HashAlgorithm = 'sha256'
}
$cert = New-SelfSignedCertificate @params
```

### Import self-signed certificate to the root store

```powershell
Export-Certificate -FilePath certificate.cer -Cert $cert
Import-Certificate -FilePath certificate.cer -CertStoreLocation Cert:\CurrentUser\Root
```

### List code signing certificates

```powershell
Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert
```

### Sign a script

```powershell
$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert | Select-Object -First 1
Set-AuthenticodeSignature -FilePath profile.ps1 -Certificate $cert
```

### Links

- [About signing](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_signing)

