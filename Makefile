EXEC := generate.py

define helpText
-----------------------------------------------------------
Author: Adam Keith
Contributors: 
-----------------------------------------------------------

Overview
-----------------------------------------------------------
> demo
    - contains spec for ALU demo

> jinja
    - houses jinja2 templates

> testbench (generated)
    - houses generated UVM files
    - TODO: make this configurable in spec

- conifg.yaml
    - YAML spec for DUT and UVM features

- generate.py
    - main process for generating UVM files

- lib.py
    - houses helper functions for generate.py

- Makefile
    - runs necessary commands
-----------------------------------------------------------

Targets - run 'make' on any of the below
-----------------------------------------------------------
help:
    display this help text

clean:
    remove generated testbench

startup:
    install dependencies

run:
    runs make clean
    runs generate.py to generate UVM files and place
        in the 'testbench' directory
-----------------------------------------------------------
endef
export helpText

.PHONY: help
help:
	@echo "$${helpText}"

.PHONY: clean
clean:
	rm -rf testbench

.PHONY: startup
startup:
	pip3 install pyyaml
	pip3 install jinja2

.PHONY: run
run: startup
	make clean

	@echo "Creating test-bench directory..."
	@mkdir testbench
	@echo $${runText}
	@python3 "${EXEC}"
