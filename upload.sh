if [ -f ~/rom/out/target/product/X00TD/Aosp*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/X00TD/ && ls Aosp*.zip)"
      rclone copy ~/rom/out/target/product/X00TD/Aosp*.zip sagit2:qassa -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/X00TD/ && ls Aosp*.zip) Uploaded Successfully!"
fi
