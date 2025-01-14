# -*- makefile -*-
# Copyright (c) 2014 The Chromium OS Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Board specific files build

# the IC is STmicro STM32F072B
CHIP:=stm32
CHIP_FAMILY:=stm32f1
CHIP_VARIANT:=stm32f10x

board-y=board.o usb_pd_policy.o injector.o simpletrace.o usb_commands.o
board-$(HAS_TASK_SNIFFER)+=sniffer.o
