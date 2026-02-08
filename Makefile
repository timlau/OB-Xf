BUILDDIR = build
SETUP_OPTIONS = -DCMAKE_BUILD_TYPE=Release
BUILD_OPTIONS = --config Release --target=obxf-staged

all: clean build

setup:
	cmake -B ${BUILDDIR} ${SETUP_OPTIONS}
.PHONY: setup

build: setup
	cmake --build ${BUILDDIR} ${BUILD_OPTIONS}
.PHONY: build

clean:
	@echo "Cleaning build directory..."
	@rm -rf ${BUILDDIR}
.PHONY: clean

run:
	./build/obxf_products/OB-Xf
.PHONY: run
