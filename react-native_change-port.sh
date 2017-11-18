if [ "$1" == "" ]; then
  echo "Usage: $0 <new_port> [<old_port>]"
  echo "    change the react-native console port from old_port (default 8081) to new_port."
  exit 1
fi

new_port=$1
if [ "$2" == "" ]; then
  old_port=8081
else
  old_port=$2
fi

echo "Changing react-native's listening port from ${old_port} to ${new_port}..."
grep -r "\b${old_port}\b" node_modules/react-native | cut -f 1 -d ":" | sort | uniq  | xargs -I {} sed -i\'\' "s/${old_port}/${new_port}/g" {}
