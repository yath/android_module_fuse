#ifndef _ANDROID_COMPAT_PTHREAD_H_
# define _ANDROID_COMPAT_PTHREAD_H_

# define PTHREAD_CANCEL_ENABLE   -1
# define PTHREAD_CANCEL_DISABLE  -1

# define pthread_cancel(x)            0
# define pthread_setcancelstate(x,y)  0

#endif // _ANDROID_COMPAT_PTHREAD_H_
