 * Download [Pixman 0.28.2](http://cairographics.org/releases/pixman-0.28.2.tar.gz)
 * Extract to `C:\mozilla-build\hexchat`
 * In `build\win32\vc11\pixman.props`, replace:
	* `<PixmanEtcInstallRoot>..\..\..\..\vs10\$(PlatformName)</PixmanEtcInstallRoot>` with  
`<PixmanEtcInstallRoot>..\..\..\..\..\gtk\$(PlatformName)</PixmanEtcInstallRoot>`
	* `<CopyDir>$(PixmanEtcInstallRoot)</CopyDir>` with  
`<CopyDir>..\..\..\..\pixman-0.28.2-rel</CopyDir>`
 * In `build\win32\vc11\pixman.props`, add to `PixmanDoInstall`
`copy $(SolutionDir)$(Configuration)\$(Platform)\bin\*.exe $(CopyDir)\bin`  
`copy $(SolutionDir)$(Configuration)\$(Platform)\bin\*.pdb $(CopyDir)\bin`
 * In `build\win32\vc11\testpixman.vcxproj`, replace `libpng15.lib` with `libpng16.lib`
 * Open `build\win32\vc11\pixman.sln` with VS
 * Build in VS
 * Release with `release-x86.bat`
 * Extract package to `C:\mozilla-build\hexchat\build\Win32`
