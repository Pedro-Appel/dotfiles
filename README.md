# How to use it

To use this dotfiles setup you can just follow this simple steps

1. clone https://github.com/Pedro-Appel/dotfiles.git
1. edit the setup_machine.sh before the last echo
    ```
    ansible-playbook playbook.yml --extra-vars "user=ubuntu" # Modify to your machine user 
    ```
1. Uncomment the type of intelliJ installation preferred
1. `chmod +x setup_machine.sh`
1. `chmod +x install-docker.sh`
1. Execute `./setup_machine.sh` 
 
# Still Missing

- [ ] Customize Polybar
- [ ] Customize Rofi




