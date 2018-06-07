name 'web'
description 'web server role'
run_list "recipe[workstation]","recipe[apache]"
