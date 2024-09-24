# List of programs

To use this dotfiles setup you can just follow this simple steps

1. clone https://github.com/Pedro-Appel/dotfiles.git
2. edit the setup_machine.sh before the last echo
    ```
    ansible-playbook playbook.yml --extra-vars "user=ubuntu" # Modify to your machine user 
    ```
3. chmod +x setup_machine.sh
4. ./setup_machine.sh

# Still Missing

- [x] Customize Polybar
- [x] Customize Rofi




