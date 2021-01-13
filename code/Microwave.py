import numpy as np
import matplotlib.pyplot as plt

a = eval(input("请输入矩形波导的a(mm)："))
b = eval(input("请输入矩形波导的b(mm)："))

waveLength = np.array([[1, 1, 0, 0.0],
                       [1, 0, 1, 0.0],
                       [1, 2, 0, 0.0],
                       [1, 0, 2, 0.0],
                       [1, 3, 0, 0.0],
                       [1, 0, 3, 0.0],
                       [1, 4, 0, 0.0],
                       [1, 0, 4, 0.0],
                       [1, 5, 0, 0.0],
                       [1, 0, 5, 0.0],
                       [3, 1, 1, 0.0],
                       [3, 1, 2, 0.0],
                       [3, 2, 1, 0.0],
                       [3, 2, 2, 0.0],
                       [3, 1, 3, 0.0],
                       [3, 3, 1, 0.0],
                       [3, 2, 3, 0.0],
                       [3, 3, 2, 0.0],
                       [3, 3, 3, 0.0],
                       [3, 4, 1, 0.0],
                       [3, 4, 2, 0.0],
                       [3, 4, 3, 0.0],
                       [3, 4, 4, 0.0],
                       [3, 1, 4, 0.0],
                       [3, 2, 4, 0.0],
                       [3, 3, 4, 0.0],
                       ])


# 计算波长
def lengthCal(a, b, m, n):
    Lambda = 2 / np.sqrt(np.power(m / a, 2) + np.power(n / b, 2))
    return Lambda


for i in range(waveLength.shape[0]):
    m = waveLength[i, 1]
    n = waveLength[i, 2]
    Lambda = lengthCal(a, b, m, n)
    waveLength[i, 3] = Lambda

# 将矩阵按第三列排序
waveLengthSort = waveLength[waveLength[:, 3].argsort()]
# print(waveLengthSort)


def printModes(flag):
    if (flag == 1.0):
        print("TE", end='')
    elif (flag == 2.0):
        print("TM", end='')
    elif (flag == 3.0):
        print("TE.TM", end='')


# 首个高次模索引位置
index = waveLengthSort.shape[0] - 2
print("出现的前5个高次模为：", end='')
for i in range(5):
    flag = waveLengthSort[index, 0]
    printModes(flag)
    print(int(waveLengthSort[index, 1]), end='')  # m
    print(int(waveLengthSort[index, 2]), end=',')  # n
    index = index - 1

# 绘图化
x = np.linspace(0, 3, 1000)
y = (a / b) * x
y1 = 2

plt.figure()
plt.plot(x, y, label=r'$y= \frac{a}{b} x$')
plt.legend(loc='lower right')

plt.hlines(2, 0, 2.5, label=r'$TE_{01}$', colors='gold')  # TE01
plt.hlines(1, 0, 2.5, label=r'$TE_{02}$', colors='yellow')  # TE02
plt.vlines(2, 0, 5, label=r'$TE_{10}$', colors='cyan')  # TE10
plt.vlines(1, 0, 2.5, label=r'$TE_{20}$', colors='violet')  # TE20
plt.vlines(2 / 3, 0, 2.5, label=r'$TE_{30}$', colors='gray')  # TE30
plt.vlines(1 / 2, 0, 2.5, label=r'$TE_{40}$', colors='palegreen')  # TE40

a_x = np.arange(0, 2 * np.pi, 0.001)
r = 2
a1 = r * np.cos(a_x)
b1 = r * np.sin(a_x)
plt.plot(a1, b1, label=r'$TE.TM_{11}$')  # TE、TM11

a2 = 1 * np.cos(a_x)
b2 = 2 * np.sin(a_x)
plt.plot(a2, b2, label=r'$TE.TM_{21}$')  # TE、TM21

a2 = (2 / 3) * np.cos(a_x)
b2 = 2 * np.sin(a_x)
plt.plot(a2, b2, label=r'$TE.TM_{31}$')  # TE、TM31

plt.xlim(0, 3)
plt.ylim(0, 5)
plt.xlabel("$x$")
plt.ylabel("$y$")
plt.legend(loc='upper right')
plt.show()
