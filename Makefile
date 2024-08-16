EXEC := generate.py 

define helpText

TEMP

endef
export helpText

define runText

Generating UVM testbench...

endef
export runText

.PHONY: clean
clean:
	rm -rf testbench

.PHONY: startup
startup:
	pip install pyyaml
	pip install jinja2

.PHONY: run
run:
	@echo "Creating test-bench directory..."
	@mkdir testbench
	@echo $${runText}
	@python -u "${EXEC}"
