decl
	integer a;
	string b;
	string c;
	integer status;
enddecl
integer main()
{	
	status = Create("myfile.dat");
	print("creation:");
	print(status);
	b = "fish";
	c = "diem";
	status = Open("myfile.dat");
	print("opening:");
	print(status);
	status = Write(0, b);
	print("carpe:");
	print(status);
	status = Write(0, c);
	print("diem:");
	print(status);
	
	// first part of the story complete
	
	status = Close(0);
	print("Closing:");
	print(status);
	
	// open the file again
	status = Open("myfile.dat");
	print("Reopen:");
	print(status);
	// read the first word
	status = Read(0, a);
	print("carpe:");
	print(status);
	print("Word read:");
	print(a);
	// read the next word
	status = Read(0, b);
	print("diem:");
	print(status);
	print("Word read:");
	print(b);
	//  try reading the next word
	status = Read(0, a);
	print("Read agn:");	// expected -1
	print(status);
	// close file
	status = Close(0);
	print("Closing:");
	print(status);		
	return 0;
}
