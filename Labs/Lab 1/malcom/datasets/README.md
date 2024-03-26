### CIFAR-10 Data Loading

We will now train the implemented neural network in a real dataset, the widely used CIFAR-10. You can download this dataset at: https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz Then, you can put it in the folder malcom/datasets (or anywhere else you want, but then you will need to change the path in the below code).

- [ ] Download the compressed tar file from the UofT's server

```
wget https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
```
> Returns
```powershell
--2024-03-26 09:56:28--  https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
Resolving www.cs.toronto.edu (www.cs.toronto.edu)... 128.100.3.30
Connecting to www.cs.toronto.edu (www.cs.toronto.edu)|128.100.3.30|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 170498071 (163M) [application/x-gzip]
Saving to: ‘cifar-10-python.tar.gz.1’

cifar-10-python.tar.gz.1               100%[============================================================================>] 162.60M  19.3MB/s    in 10s     

2024-03-26 09:56:39 (16.0 MB/s) - ‘cifar-10-python.tar.gz.1’ saved [170498071/170498071]
```

- [ ] Decompress the file

```
tar zxvf cifar-10-python.tar.gz
```
> Returns
```powershell
x cifar-10-batches-py/
x cifar-10-batches-py/data_batch_4
x cifar-10-batches-py/readme.html
x cifar-10-batches-py/test_batch
x cifar-10-batches-py/data_batch_3
x cifar-10-batches-py/batches.meta
x cifar-10-batches-py/data_batch_2
x cifar-10-batches-py/data_batch_5
x cifar-10-batches-py/data_batch_1
```


# References

- [ ] [UofT's Alex Krizhevsky's home page](http://www.cs.toronto.edu/~kriz/cifar.html)

Note: The files are not uploaded to github :x: