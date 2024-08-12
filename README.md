# makeのサンプル

起動

```bash
docker compose build
docker compose up -d
```

make実行

```bash
docker compose exec mygcc make
```

make clean実行

```bash
docker compose exec mygcc make clean
```

停止

```bash
docker compose down
```


shared library

```bash
./main
LD_LIBRARY_PATH=./dummy_lib/lib/opencv/:$LD_LIBRARY_PATH ./main
LD_LIBRARY_PATH=./dummy_lib/lib/pcl/:$LD_LIBRARY_PATH ./main

ldd ./main
LD_LIBRARY_PATH=./dummy_lib/lib/opencv/:$LD_LIBRARY_PATH ldd ./main
LD_LIBRARY_PATH=./dummy_lib/lib/pcl/:$LD_LIBRARY_PATH ldd ./main
```
