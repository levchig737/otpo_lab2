#############################################################################
# Makefile for building: qmake-gtest
# Generated by qmake (3.1) (Qt 5.12.8)
# Project:  qmake-gtest.pro
# Template: subdirs
# Command: /usr/lib/qt5/bin/qmake -o Makefile qmake-gtest.pro
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = /usr/lib/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/lib/qt5/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/lib/qt5/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = qmake-gtest1.0.0
DISTDIR = /home/lev/inf/otpo_lab2/.tmp/qmake-gtest1.0.0
SUBTARGETS    =  \
		sub-app \
		sub-tests


sub-app-qmake_all:  FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro
	cd app/ && $(MAKE) -f Makefile qmake_all
sub-app: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile
sub-app-make_first-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile 
sub-app-make_first: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile 
sub-app-all-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile all
sub-app-all: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile all
sub-app-clean-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile clean
sub-app-clean: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile clean
sub-app-distclean-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile distclean
sub-app-distclean: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile distclean
sub-app-install_subtargets-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile install
sub-app-install_subtargets: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile install
sub-app-uninstall_subtargets-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile uninstall
sub-app-uninstall_subtargets: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile uninstall
sub-tests-qmake_all: sub-app-qmake_all FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro
	cd tests/ && $(MAKE) -f Makefile qmake_all
sub-tests: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile
sub-tests-make_first-ordered: sub-app-make_first-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile 
sub-tests-make_first: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile 
sub-tests-all-ordered: sub-app-all-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile all
sub-tests-all: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile all
sub-tests-clean-ordered: sub-app-clean-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile clean
sub-tests-clean: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile clean
sub-tests-distclean-ordered: sub-app-distclean-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile distclean
sub-tests-distclean: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile distclean
sub-tests-install_subtargets-ordered: sub-app-install_subtargets-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile install
sub-tests-install_subtargets: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile install
sub-tests-uninstall_subtargets-ordered: sub-app-uninstall_subtargets-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile uninstall
sub-tests-uninstall_subtargets: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile uninstall

Makefile: qmake-gtest.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuthCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		qmake-gtest.pro
	$(QMAKE) -o Makefile qmake-gtest.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuthCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
qmake-gtest.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile qmake-gtest.pro

qmake_all: sub-app-qmake_all sub-tests-qmake_all FORCE

make_first: sub-app-make_first-ordered sub-tests-make_first-ordered  FORCE
all: sub-app-all-ordered sub-tests-all-ordered  FORCE
clean: sub-app-clean-ordered sub-tests-clean-ordered  FORCE
distclean: sub-app-distclean-ordered sub-tests-distclean-ordered  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-app-install_subtargets-ordered sub-tests-install_subtargets-ordered FORCE
uninstall_subtargets: sub-app-uninstall_subtargets-ordered sub-tests-uninstall_subtargets-ordered FORCE

sub-app-check_ordered:
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile check
sub-tests-check_ordered: sub-app-check_ordered 
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile check
check: sub-app-check_ordered sub-tests-check_ordered

sub-app-benchmark_ordered:
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -f Makefile benchmark
sub-tests-benchmark_ordered: sub-app-benchmark_ordered 
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -f Makefile benchmark
benchmark: sub-app-benchmark_ordered sub-tests-benchmark_ordered
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: sub-app-distdir sub-tests-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_Attica.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuth.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KAuthCore.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCodecs.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCompletion.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigCore.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigGui.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KConfigWidgets.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KCoreAddons.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KDBusAddons.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGlobalAccel.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KGuiAddons.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KI18n.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KIconThemes.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KItemViews.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KService.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KTextWidgets.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWidgetsAddons.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KWindowSystem.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_KXmlGui.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_script.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_scripttools.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetCore.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_SonnetUi.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf qmake-gtest.pro $(DISTDIR)/

sub-app-distdir: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/app/app.pro ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/app

sub-tests-distdir: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/lev/inf/otpo_lab2/tests/tests.pro ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/tests

