# Project D8
# Created by Fred Nora.

# Dependencies
DEP_FNDOS   = ../fn-dos
DEP_PMI     = ../pmi
DEP_GRAMADO = ../../gramado

# Folders
FNDOS_DIR   = FNDOS
PMI_DIR     = PMI
GRAMADO_DIR = GRAMADO

# Build all
all:

# Copy image
	-cp $(DEP_FNDOS)/FNDOS.VHD            $(FNDOS_DIR)/
	-cp $(DEP_PMI)/GRAMADO.VHD            $(PMI_DIR)/
	-cp $(DEP_GRAMADO)/kernel/GRAMHV.VHD  $(GRAMADO_DIR)/

# Giving permitions to run.
	chmod 755 ./run
	chmod 755 ./runnokvm

# tests
	chmod 755 ./runt1
	chmod 755 ./runt2
	@echo "Done?"

clean:
	-rm $(FNDOS_DIR)/*.VHD
	-rm $(PMI_DIR)/*.VHD
	-rm $(GRAMADO_DIR)/*.VHD
clean-all:
	-rm $(FNDOS_DIR)/*.VHD
	-rm $(PMI_DIR)/*.VHD
	-rm $(GRAMADO_DIR)/*.VHD

