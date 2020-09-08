#!/bin/bash
temp0=$(sensors | grep 'Tctl:' | cut -c '16-17')
temp_gpu=$(sensors | grep 'edge:' | cut -c '16-17')

# echo "<table><tr><td  bgcolor='#ff0000'>CPU</td><td>GPU</td></tr><tr><td>${temp0%%.*}</td><td>${temp_gpu}</td></tr></table>"
# echo "<div><font size='1'>CPU</font><br/><font size='2'>${temp0%%.*}°</font></div><div><font size='1'>GPU</font><br/><font size='2'>${temp_gpu}°</font></div> | font=Inconsolata-Condensed"
echo "&nbsp;<font color='yellow' size='2'>CPU&nbsp;&nbsp;GPU</font>&nbsp;<br><font size='3'>&nbsp;${temp0%%.*}&nbsp;&nbsp;${temp_gpu}</font>| font=Inconsolata Condensed"
# echo "---"
# echo ""
# echo "   <br><font size='1'>CPU&nbsp;&nbsp;GPU&nbsp;&nbsp;HDD</font><br>${temp0%%.*}°&nbsp;${gpu_temp}°&nbsp;${hdd_temp}°| font=Hack-Regular size=10   "
