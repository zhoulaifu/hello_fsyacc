p:
	dotnet fsyacc.dll --module ExprPar ExprPar.fsy
l:
	dotnet fslex.dll --unicode ExprLex.fsl

i:
	#fsharpi -r FsLexYacc.Runtime.dll Absyn.fs ExprPar.fs ExprLex.fs Parse.fs
	dotnet fsi -r FsLexYacc.Runtime.dll Absyn.fs ExprPar.fs ExprLex.fs Parse.fs
pv:
	dotnet fsyacc.dll  -v --module ExprPar ExprPar.fsy
