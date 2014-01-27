
if [ `hostname` = "bkn" ]; then
    echo " -- on host `hostname` -- "
#    source ~/.zshrc_android
elif [ `hostname` = "bRadical" ]; then
    echo " -- on host `hostname` -- "
else 
    echo " -- on host `hostname` (not custom section) -- "
fi
