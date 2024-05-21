$vmem_options = @(
    [PSCustomObject]@{Size = '512MB'; Value = '512000000'}
    [PSCustomObject]@{Size = '1GB'; Value = '1024000000'}
    [PSCustomObject]@{Size = '4GB'; Value = '4096000000'}
    [PSCustomObject]@{Size = '8GB'; Value = '8192000000'}
    [PSCustomObject]@{Size = '16GB'; Value = '16384000000'}
)

$vhd_options = @(
    [PSCustomObject]@{Size = '1GB'; Value = '1073741824'}
    [PSCustomObject]@{Size = '16GB'; Value = '17179869184'}
    [PSCustomObject]@{Size = '64GB'; Value = '68719476736'}
    [PSCustomObject]@{Size = '128GB'; Value = '137438953472'}
    [PSCustomObject]@{Size = '256GB'; Value = '274877906944'}
    [PSCustomObject]@{Size = '512GB'; Value = '549755813888'}
)

$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label_hypervwarning = $null
[System.Windows.Forms.Label]$Label_vswitch = $null
[System.Windows.Forms.Label]$Label_vmcount = $null
[System.Windows.Forms.Label]$Label_vstorage = $null
[System.Windows.Forms.Label]$Label_vcpucount = $null
[System.Windows.Forms.Label]$Label_namingconvention = $null
[System.Windows.Forms.ComboBox]$combo_vmemory = $null
[System.Windows.Forms.ComboBox]$combo_vstorage = $null
[System.Windows.Forms.ComboBox]$combo_vswitch = $null
[System.Windows.Forms.TextBox]$text_namingconvention = $null
[System.Windows.Forms.Label]$Label_vmemory = $null
[System.Windows.Forms.NumericUpDown]$numeric_machinecount = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.NumericUpDown]$numeric_vcpucount = $null

function InitializeComponent {
    $Label_hypervwarning = (New-Object -TypeName System.Windows.Forms.Label)
    $Label_vswitch = (New-Object -TypeName System.Windows.Forms.Label)
    $Label_vmcount = (New-Object -TypeName System.Windows.Forms.Label)
    $Label_vstorage = (New-Object -TypeName System.Windows.Forms.Label)
    $Label_vcpucount = (New-Object -TypeName System.Windows.Forms.Label)
    $Label_namingconvention = (New-Object -TypeName System.Windows.Forms.Label)
    $combo_vmemory = (New-Object -TypeName System.Windows.Forms.ComboBox)
    $combo_vstorage = (New-Object -TypeName System.Windows.Forms.ComboBox)
    $combo_vswitch = (New-Object -TypeName System.Windows.Forms.ComboBox)
    $text_namingconvention = (New-Object -TypeName System.Windows.Forms.TextBox)
    $Label_vmemory = (New-Object -TypeName System.Windows.Forms.Label)
    $numeric_machinecount = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
    $Button1 = (New-Object -TypeName System.Windows.Forms.Button)
    $numeric_vcpucount = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
    ([System.ComponentModel.ISupportInitialize]$numeric_machinecount).BeginInit()
    ([System.ComponentModel.ISupportInitialize]$numeric_vcpucount).BeginInit()
    $Form1.SuspendLayout()

    $Label_namingconvention.BackColor = [System.Drawing.SystemColors]::Control
    $Label_namingconvention.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
    $Label_namingconvention.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)))
    $Label_namingconvention.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]27))
    $Label_namingconvention.Name = [System.String]'Label_namingconvention'
    $Label_namingconvention.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_namingconvention.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_namingconvention.TabIndex = [System.Int32]0
    $Label_namingconvention.Text = [System.String]'Naming Convention'
    $Label_namingconvention.add_Click($Label1_Click)

    $text_namingconvention.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $text_namingconvention.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]25))
    $text_namingconvention.Name = [System.String]'text_namingconvention'
    $text_namingconvention.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $text_namingconvention.MaxLength = 10
    $text_namingconvention.TabIndex = [System.Int32]1

    $Label_vmcount.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]50))
    $Label_vmcount.Name = [System.String]'Label_vmcount'
    $Label_vmcount.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_vmcount.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_vmcount.TabIndex = [System.Int32]2
    $Label_vmcount.Text = [System.String]'Machine Count'

    $numeric_machinecount.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]48))
    $numeric_machinecount.Minimum = [System.Int32]1
    $numeric_machinecount.Name = [System.String]'numeric_machinecount'
    $numeric_machinecount.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $numeric_machinecount.TabIndex = [System.Int32]3
    $numeric_machinecount.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
    $numeric_machinecount.Value = [System.Int32]1

    $Label_vcpucount.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]73))
    $Label_vcpucount.Name = [System.String]'Label_vcpucount'
    $Label_vcpucount.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_vcpucount.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_vcpucount.TabIndex = [System.Int32]4
    $Label_vcpucount.Text = [System.String]'vCPU Thread Count'

    $numeric_vcpucount.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]71))
    $numeric_vcpucount.Maximum = [System.Int32]2
    $numeric_vcpucount.Minimum = [System.Int32]1
    $numeric_vcpucount.Name = [System.String]'numeric_vcpucount'
    $numeric_vcpucount.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $numeric_vcpucount.TabIndex = [System.Int32]5
    $numeric_vcpucount.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
    $numeric_vcpucount.Value = [System.Int32]1

    $Label_vmemory.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]96))
    $Label_vmemory.Name = [System.String]'Label_vmemory'
    $Label_vmemory.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_vmemory.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_vmemory.TabIndex = [System.Int32]6
    $Label_vmemory.Text = [System.String]'Memory'

    $combo_vmemory.FormattingEnabled = $true
    $combo_vmemory.Items.AddRange([System.Object[]]@($vmem_options.Size))
    $combo_vmemory.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]93))
    $combo_vmemory.Name = [System.String]'combo_vmemory'
    $combo_vmemory.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $combo_vmemory.TabIndex = [System.Int32]7

    $Label_vstorage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]119))
    $Label_vstorage.Name = [System.String]'Label_vstorage'
    $Label_vstorage.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_vstorage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_vstorage.TabIndex = [System.Int32]8
    $Label_vstorage.Text = [System.String]'Storage'

    $combo_vstorage.FormattingEnabled = $true
    $combo_vstorage.Items.AddRange([System.Object[]]@($vhd_options.Size))
    $combo_vstorage.Text.Equals($vhd_options.Value)
    $combo_vstorage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]116))
    $combo_vstorage.Name = [System.String]'combo_vstorage'
    $combo_vstorage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $combo_vstorage.TabIndex = [System.Int32]9

    $Label_vswitch.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]142))
    $Label_vswitch.Name = [System.String]'Label_vswitch'
    $Label_vswitch.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_vswitch.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]23))
    $Label_vswitch.TabIndex = [System.Int32]10
    $Label_vswitch.Text = [System.String]'Virtual Switch'

    $combo_vswitch.FormattingEnabled = $true
    $combo_vswitch.Items.AddRange([System.Object[]]@($vswitches))
    $combo_vswitch.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]139))
    $combo_vswitch.Name = [System.String]'combo_vswitch'
    $combo_vswitch.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
    $combo_vswitch.TabIndex = [System.Int32]11

    $count = 0
    $path = 'C:\Hyper-V'
    New-Item -Path $path -ItemType Directory

    function new-vms {
        do {
            $vcpu = $numeric_vcpucount.Value
            $vms = $numeric_machinecount.Value
            [int64]$vmem = $vmem_options[($combo_vmemory.SelectedIndex)].Value
            [int64]$vhdsize = $vhd_options[($combo_vstorage.SelectedIndex)].Value
            $vswitch = $combo_vswitch.SelectedItem
            $vmname = $text_namingconvention.Text + '-' + $count

            New-VM `
            -Generation 2 `
            -MemoryStartupBytes $vmem `
            -Name $vmname `
            -NewVHDPath "$path\$vmname\$vmname.vhdx" `
            -NewVHDSizeBytes $vhdsize `
            -SwitchName $vswitch `
            -Path "$path\$vmname"
            
            Set-VMProcessor -VMName $vmname -HwThreadCountPerCore $vcpu
            $count++
        }
        until (($vms -lt $count) -or ($vms -eq $count))
    }

    $Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]174,[System.Int32]189))
    $Button1.Name = [System.String]'Button1'
    $Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
    $Button1.TabIndex = [System.Int32]12
    $Button1.Text = [System.String]'Build'
    $Button1.UseVisualStyleBackColor = $true
    $Button1_Click = ({
        new-vms
    })
    $Button1.add_Click($Button1_Click)

    $Label_hypervwarning.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]200))
    $Label_hypervwarning.Name = [System.String]'Label_hypervwarning'
    $Label_hypervwarning.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
    $Label_hypervwarning.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]30))
    $Label_hypervwarning.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]16))
    $Label_hypervwarning.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)))
    $Label_hypervwarning.TabIndex = [System.Int32]13
    $Label_hypervwarning.Text = [System.String]'Hyper-V not enabled!'

    $Form1.AcceptButton = $Button1
    $Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]277))
    $Form1.Controls.Add($numeric_hypervwarning)
    $Form1.Controls.Add($numeric_vcpucount)
    $Form1.Controls.Add($Button1)
    $Form1.Controls.Add($numeric_machinecount)
    $Form1.Controls.Add($Label_vmemory)
    $Form1.Controls.Add($text_namingconvention)
    $Form1.Controls.Add($combo_vswitch)
    $Form1.Controls.Add($combo_vstorage)
    $Form1.Controls.Add($combo_vmemory)
    $Form1.Controls.Add($Label_vcpucount)
    $Form1.Controls.Add($Label_vstorage)
    $Form1.Controls.Add($Label_vmcount)
    $Form1.Controls.Add($Label_vswitch)
    $Form1.Controls.Add($Label_namingconvention)
    $Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
    $Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
    $Form1.MaximizeBox = $false
    $Form1.MinimizeBox = $false
    $Form1.ShowIcon = $false
    $Form1.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
    $Form1.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
    $Form1.Text = [System.String]'Hyper-V Environment Builder'
    ([System.ComponentModel.ISupportInitialize]$numeric_machinecount).EndInit()
    ([System.ComponentModel.ISupportInitialize]$numeric_vcpucount).EndInit()
    $Form1.ResumeLayout($false)
    $Form1.PerformLayout()
    Add-Member -InputObject $Form1 -Name Label_vswitch -Value $Label_vswitch -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label_vmcount -Value $Label_vmcount -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label_vstorage -Value $Label_vstorage -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label_vcpucount -Value $Label_vcpucount -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label_namingconvention -Value $Label_namingconvention -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name combo_vmemory -Value $combo_vmemory -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name combo_vstorage -Value $combo_vstorage -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name combo_vswitch -Value $combo_vswitch -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name text_namingconvention -Value $text_namingconvention -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label_vmemory -Value $Label_vmemory -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name numeric_machinecount -Value $numeric_machinecount -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name numeric_vcpucount -Value $numeric_vcpucount -MemberType NoteProperty
}
. InitializeComponent

$form1.BringToFront()
$form1.ShowDialog()

#$form1.Dispose()

function remove-environment {
    $machines = Get-VM | Select-Object -ExpandProperty Name
    foreach ($machine in $machines) {
        Stop-VM -Name $machine -TurnOff -ErrorAction Continue
        Remove-VM -Name $machine -Force -ErrorAction Continue
        Remove-Item -Path "$path\$machine" -Recurse -Force
    }
}
