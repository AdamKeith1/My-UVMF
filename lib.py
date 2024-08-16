import re

def get_file_stem(j2_file):
    match = re.match(r"^(.*?)(?:\.jinja2)?$", j2_file)
    if match:
        return match.group(1)
    else:
        return j2_file
