# -*- makefile -*-
# Copyright (c) 2014 The Chromium OS Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Common files build
#

common-y=util.o
common-y+=version.o printf.o queue.o queue_policies.o

common-$(CONFIG_ADC)+=adc.o
common-$(CONFIG_COMMON_GPIO)+=gpio.o gpio_commands.o
common-$(CONFIG_COMMON_PANIC_OUTPUT)+=panic_output.o
common-$(CONFIG_COMMON_RUNTIME)+=hooks.o main.o system.o
common-$(CONFIG_COMMON_TIMER)+=timer.o
common-$(CONFIG_DEVICE_STATE)+=device_state.o
common-$(CONFIG_EXTENSION_COMMAND)+=extension.o
common-$(CONFIG_EXTPOWER_GPIO)+=extpower_gpio.o
common-$(CONFIG_FLASH)+=flash.o
common-$(CONFIG_FMAP)+=fmap.o
common-$(CONFIG_HOSTCMD_EVENTS)+=host_event_commands.o
common-$(CONFIG_HOSTCMD_PD)+=host_command_master.o
common-$(CONFIG_I2C_MASTER)+=i2c_master.o
common-$(CONFIG_I2C_SLAVE)+=i2c_slave.o
common-$(CONFIG_ROLLBACK)+=rollback.o
common-$(CONFIG_RWSIG)+=rwsig.o
common-$(CONFIG_MATH_UTIL)+=math_util.o
common-$(CONFIG_SOFTWARE_CLZ)+=clz.o
common-$(CONFIG_SWITCH)+=switch.o
common-$(CONFIG_TPM_I2CS)+=i2cs_tpm.o
common-$(CONFIG_USB_I2C)+=usb_i2c.o
common-$(CONFIG_USB_POWER_DELIVERY)+=usb_pd_protocol.o usb_pd_policy.o
common-$(CONFIG_USB_PD_LOGGING)+=pd_log.o
common-$(CONFIG_USB_PD_TCPC)+=usb_pd_tcpc.o
common-$(CONFIG_USB_UPDATE)+=usb_update.o update_fw.o
common-$(CONFIG_WEBUSB_URL)+=webusb_desc.o
common-$(HAS_TASK_CHIPSET)+=chipset.o
common-$(HAS_TASK_CONSOLE)+=console.o console_output.o uart_buffering.o
common-$(CONFIG_CMD_MEM)+=memory_commands.o
common-$(HAS_TASK_HOSTCMD)+=host_command.o
common-$(HAS_TASK_PDCMD)+=host_command_pd.o

common-$(CONFIG_COMMON_RUNTIME)+=shared_mem.o

common-y+=test_util.o
common-$(TEST_BUILD)+=sensor_common.o
