decl
	integer a;
	string b;
	string c;
	integer fileDesc;
enddecl
integer main()
{	
	a = Create("myfile.dat");
	print("Create:");
	print(a);
	fileDesc = Open("myfile.dat");	// file descriptor
	print("fileDesc:");
	print(fileDesc);
	
	// write the string
	b = "Aashish";
	c = "Satya";
	a = Write(fileDesc, b);
	print("Aashish:");
	print(a);
	a = Write(fileDesc, c);
	print("Satya:");
	print(a);
	return 0;
}