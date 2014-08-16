# Some Aliases & Path additions that for some reason
# the vagrant provisioner did not include

alias lsa="ls -a"
alias ..="cd ../"
alias ...="cd ../../"

alias runserver="dev_appserver.py /home/vagrant/app --host 0.0.0.0 --admin_host 0.0.0.0 --storage_path /home/vagrant/storage --skip_sdk_update_check"


export PATH="$PATH:/opt/google_appengine:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin"
