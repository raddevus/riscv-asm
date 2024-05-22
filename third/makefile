OBJS = third.o
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS = 
endif
%.o : %.s
	as $(DEBUGFLGS) $< -o $@
third: $(OBJS)
	ld -o third $(OBJS)
