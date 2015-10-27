# add alias to bashrc
echo -n "bashrc: "
if grep -q "#begin_configure" /etc/bash.bashrc; then   
   echo -n "reapplying "
   sed -i '/#begin_configure/,/#end_configure/d' /etc/bash.bashrc     
fi

cat ./copy/bash.bashrc >> /etc/bash.bashrc
echo "done"

