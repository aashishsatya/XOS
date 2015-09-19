decl
	integer a;
	integer status;
	integer fileDescriptor;
enddecl
integer main()
{
	status = Create("even.dat");
	fileDescriptor = Open("even.dat");
	a = 0;
	while (a < 1000) do
		status = Write(fileDescriptor, a);
		print(status);
		a = a + 2;
	endwhile;
	print("status:");
	status = Close(fileDescriptor);
	print(status);
	return 0;
}