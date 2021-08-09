Task 1:
Önce Dockerfile'ı oluşturdum. Sonrasında "docker build -t tarikalpinecurl ." commandiyle
image'ımı custom bir isimle build ettim. . argümanını veriyoruz çünkü 
current directory'deki Dockerfile'ı kullanmasını istiyoruz.
Sonrasında "docker run -it tarikalpinecurl /bin/sh" komutunu kullandım ve container'ımı
çalştırdım. -it ve /bin/sh argümanıyla interactive shell açtım ki container içine
erişeyim. Sonrasında "which curl" ve "which htop" komutlarıyla ikisinin de "/usr/bin/"
directory'sine kurulduğunu teyit ettim. Base Alpine image'ında iki komutu da 
yazdığımızda bir output alamıyorduk çünkü kurulu değillerdi.

Task 2:
Yine öncelikle docker-compose.yaml dosyamı oluşturdum. 
Sonrasında "docker-compose up -d" komutuyla container'ı çalıştırır hale getirdim.
Teyit amacıyla kendi tarayıcımı açıp adresini ve portunu girerek
Wordpress sayfasına erişebildim.

Task 3:
İlk olarak docker-install klasörümü yarattım. İçine önce playbook.yml dosyamı
oluşturdum. Sonrasında aynı directory içinde bir hosts dosyası yaratıp içine kişisel
server adresim olan adresi ekledim. yml dosyasını execute etmek için
"ansible-playbook playbook.yml -i hosts -u root -kK" komutunu çalıştırdım. Sondaki -kK
argümanını ekledim çünkü unreachable hatası alıyordum. Daha önce de bu hatayı 
aldığımdan bu argümanı ekleyerek düzeltebileceğimi Stack Overflow'dan öğrenmiştim.
Çalıştırdıktan sonra SSH ve BECOME password olmak üzere iki password sordu. 
Kişisel serverlarımızın şifresini girdim ve playbook başarılı bir şekilde
çalıştırıldı. Kontrol etmek için ssh ile kişisel serverıma eriştim ve "docker ps -a"
komutuyla container'ımı gördüm.       
