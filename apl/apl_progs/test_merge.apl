decl
	integer evenfile;
	integer oddfile;
	integer newfile;
	string num;
	integer temp;
enddecl
integer main()
{
	evenfile = Open("even.dat");
	print("Open even:");
	print(evenfile);
	
	oddfile = Open("odd.dat");
	print("Open odd:");
	print(oddfile);
	
	newfile = Create("merged.dat");
	print("Create new:");
	print(newfile);
	
	newfile = Open("merged.dat");
	print("Open new:");
	print(newfile);
	
	// read the even number
	temp = Read(evenfile, num);
	print("num:");
	print(num);
	
	while (temp == 0) do
		// write even number
		temp = Write(newfile, num);
		// read the odd number
		temp = Read(oddfile, num);
		// write the odd number
		temp = Write(newfile, num);
		// read the next even number
		temp = Read(evenfile, num);
	endwhile;
	
	// close all
	temp = Close(evenfile);
	temp = Close(oddfile);
	temp = Close(newfile);
	return 0;
}
