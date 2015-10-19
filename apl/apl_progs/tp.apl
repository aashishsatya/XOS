integer main()
{
	integer pid;
	//print("Fork Try 1");
	pid = Fork();
	if (pid == -1) then
		print("FORK_ERR");
	endif;
	print("Fork Try 2");
	pid = Fork();
	if (pid == -1) then
		print("FORK_ERR");
	endif;
	print("Fork Try 3");
	pid = Fork();
	if (pid == -1) then
		print("FORK_ERR");
	endif;
	print("Fork Try 4");
	pid = Fork();
	if (pid == -1) then
		print("FORK_ERR");
	endif;
	print("Fork Try 5");
	pid = Fork();
	if (pid == -1) then
		print("FORK_ERR");
	endif;	
	pid = Exec("print.xsm");
	print("EXEC_FAIL");
	return 0;
}