#!/bin/zsh
cd "/Users/manman/Desktop/大宗3.0"
echo "平台指标商品审核后台已准备启动"
echo ""
echo "本机访问："
echo "  http://localhost:8088/audit.html"
echo ""
echo "同一局域网访问："
echo "  http://$(ipconfig getifaddr en0):8088/audit.html"
echo ""
echo "保持这个窗口不要关闭。关闭窗口后，网页链接会失效。"
echo ""
python3 -m http.server 8088
