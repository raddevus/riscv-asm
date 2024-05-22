OBJS = easy.o
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS = 
endif
%.o : %.s
	as $(DEBUGFLGS) $< -o $@
easy: $(OBJS)
	ld -o easy $(OBJS)
