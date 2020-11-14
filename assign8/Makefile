run: compile
	@for times in 1 2 3 4 5;               \
	do                                     \
	 	echo "----------------------------------------Run $$times----------------------------------------";\
		for number in 2 4 8 16;            \
		do                                 \
			echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~N: $$number~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";   \
			java MythreadTest $$number;    \
		done                               \
	done
compile:
	javac MythreadTest.java