Description
===========

This script creates a c++ template of a class, using the Orthodox Canonical class form.

It will generate a \<file\>.hpp and \<file\>.cpp with file being provided by the user.

Simple command example : ```genclass CppClass```

Will output :

![image](https://github.com/QuentinThierry/cpp_genclass/assets/38769246/ec104db3-c7ab-4103-bf80-cf4852c3eab5)


Install
=======
```git clone https://github.com/QuentinThierry/cpp_genclass.git && bash cpp_genclass/install.sh && rm -rf cpp_genclass/```

Usage
=====
Using ```genclass CppClass``` will output two Orthodox Canonical classes named ```CppClass.cpp``` and ```CppClass.hpp```.

Using ```genclass``` with no arguments will create a ```main.cpp``` base.

Using ```genclass --help``` displays this message.
