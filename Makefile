TARGET=HOD
LIBS = -g -lstdc++ -lSDL2 -lGL -lGLU -lpspvfpu -lpsprtc -lpspgu -lpspaudio -lpsphprm -lpspvram -lpspsdk -lm

INCDIR =
LIBDIR = 
LDFLAGS =

CFLAGS += -O2 -G0 -Wall -DHAVE_OPENGL -D_PSP_FW_VERSION=150 -MMD
CXXFLAGS = $(CFLAGS) -fexceptions -fno-rtti
ASFLAGS = $(CFLAGS)


SRCS = andy.cpp benchmark.cpp fileio.cpp fs_posix.cpp game.cpp \
	level1_rock.cpp level2_fort.cpp level3_pwr1.cpp level4_isld.cpp \
	level5_lava.cpp level6_pwr2.cpp level7_lar1.cpp level8_lar2.cpp level9_dark.cpp \
	lzw.cpp main.cpp mdec.cpp menu.cpp mixer.cpp monsters.cpp paf.cpp random.cpp \
	resource.cpp screenshot.cpp sound.cpp staticres.cpp system_sdl2.cpp \
	util.cpp video.cpp

SCALERS := scaler_nearest.cpp scaler_xbr.cpp

OBJS = $(SRCS:.cpp=.o) $(SCALERS:.cpp=.o) 3p/inih/ini.o 3p/libxbr-standalone/xbr.o
DEPS = $(SRCS:.cpp=.d) $(SCALERS:.cpp=.d) 3p/inih/ini.d 3p/libxbr-standalone/xbr.d

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE ="Heart of Darkness"
#BUILD_PRX=1
#PSP_LARGE_MEMORY=1
#PSP_LARGE_MEMORY=1

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
