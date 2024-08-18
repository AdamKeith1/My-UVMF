import yaml
from jinja2 import Template, StrictUndefined, Environment, FileSystemLoader
import re
import lib

spec = 'demo/alu.yaml'
templates = ['agent.sv.jinja2', 'driver.sv.jinja2', 'env.sv.jinja2', 'interface.sv.jinja2', 'monitor.sv.jinja2', 'sequence_item.sv.jinja2']

with open(spec, 'r') as file:
    DUT_spec = yaml.safe_load(file)

env = Environment(loader=FileSystemLoader('.'))

for template in templates:
    
    uvm_file = lib.get_file_stem(template)
    j2_template = env.get_template(f'jinja/{template}')
    result = j2_template.render(DUT_spec)

    with open(f'testbench/{uvm_file}', 'w') as fp:
        fp.write(result)

