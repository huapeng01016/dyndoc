*! version 1.0.0  07oct2019

version 16
local path = ""
if "`c(os)'" == "MacOSX" {
	dynpandoc dyn2019.md, 	/// 
		sav(index.html)	/// 
		replace 	/// 
		to(revealjs) 	/// 
		path(/Users/hpeng01016/anaconda3/bin/pandoc)	///		
		pargs(-s --template=revealjs.html  	/// 
		--self-contained	/// 
		--section-divs	/// 
		--variable theme="stata"	/// 
		)
}
else {
	dynpandoc dyn2019.md, 	/// 
		sav(index.html)	/// 
		replace 	/// 
		to(revealjs) 	/// 
		pargs(-s --template=revealjs.html  	/// 
		--self-contained	/// 
		--section-divs	/// 
		--variable theme="stata"	/// 
		)
}

exit

