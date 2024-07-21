if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ilashlm10/LCU /LCU
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LCU
fi
cd /LCU
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
