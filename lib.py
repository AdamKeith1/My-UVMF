import re
import yaml

# Get SystemVerilog Filename
def get_file_stem(j2_file):
    match = re.match(r"^(.*?)(?:\.jinja2)?$", j2_file)
    if match:
        return match.group(1)
    else:
        return j2_file
    
# Load YAML Spec
def load_spec(spec):
    with open(spec, 'r') as fp:
        DUT_spec = yaml.safe_load(fp)

        return DUT_spec
    
# Write UVM Testbench File
def write_testbench(sv_result, uvm_file):
    with open(f'testbench/{uvm_file}', 'w') as fp:
        fp.write(sv_result)