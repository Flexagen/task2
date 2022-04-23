#############################################################################
# Makefile for building: qmake-task2
# Generated by qmake (3.1) (Qt 6.2.3)
# Project:  qmake-task2.pro
# Template: subdirs
# Command: /home/mpavlov/Qt/6.2.3/gcc_64/bin/qmake -o Makefile qmake-task2.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = /home/mpavlov/Qt/6.2.3/gcc_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /home/mpavlov/Qt/6.2.3/gcc_64/bin/qmake -install qinstall
QINSTALL_PROGRAM = /home/mpavlov/Qt/6.2.3/gcc_64/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = qmake-task21.0.0
DISTDIR = /home/mpavlov/testing/task2/.tmp/qmake-task21.0.0
SUBTARGETS    =  \
		sub-app \
		sub-tests


sub-app-qmake_all:  FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
	cd app/ && $(MAKE) -f Makefile qmake_all
sub-app: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile
sub-app-make_first-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile 
sub-app-make_first: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile 
sub-app-all-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile all
sub-app-all: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile all
sub-app-clean-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile clean
sub-app-clean: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile clean
sub-app-distclean-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile distclean
sub-app-distclean: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile distclean
sub-app-install_subtargets-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile install
sub-app-install_subtargets: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile install
sub-app-uninstall_subtargets-ordered: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile uninstall
sub-app-uninstall_subtargets: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile uninstall
sub-tests-qmake_all: sub-app-qmake_all FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
	cd tests/ && $(MAKE) -f Makefile qmake_all
sub-tests: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile
sub-tests-make_first-ordered: sub-app-make_first-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile 
sub-tests-make_first: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile 
sub-tests-all-ordered: sub-app-all-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile all
sub-tests-all: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile all
sub-tests-clean-ordered: sub-app-clean-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile clean
sub-tests-clean: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile clean
sub-tests-distclean-ordered: sub-app-distclean-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile distclean
sub-tests-distclean: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile distclean
sub-tests-install_subtargets-ordered: sub-app-install_subtargets-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile install
sub-tests-install_subtargets: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile install
sub-tests-uninstall_subtargets-ordered: sub-app-uninstall_subtargets-ordered  FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile uninstall
sub-tests-uninstall_subtargets: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile uninstall

Makefile: qmake-task2.pro ../../Qt/6.2.3/gcc_64/mkspecs/linux-g++/qmake.conf ../../Qt/6.2.3/gcc_64/mkspecs/features/spec_pre.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/unix.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/linux.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/sanitize.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base-unix.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/g++-base.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/common/g++-unix.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/qconfig.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_ext_libpng.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_tools_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../Qt/6.2.3/gcc_64/mkspecs/features/qt_functions.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/qt_config.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/linux-g++/qmake.conf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../Qt/6.2.3/gcc_64/mkspecs/features/exclusive_builds.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/toolchain.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/default_pre.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/resolve_config.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/default_post.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/qml_debug.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/warn_on.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/qmake_use.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/file_copies.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/testcase_targets.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/exceptions.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/yacc.prf \
		../../Qt/6.2.3/gcc_64/mkspecs/features/lex.prf \
		qmake-task2.pro
	$(QMAKE) -o Makefile qmake-task2.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
../../Qt/6.2.3/gcc_64/mkspecs/features/spec_pre.prf:
../../Qt/6.2.3/gcc_64/mkspecs/common/unix.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/linux.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/sanitize.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base-unix.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/g++-base.conf:
../../Qt/6.2.3/gcc_64/mkspecs/common/g++-unix.conf:
../../Qt/6.2.3/gcc_64/mkspecs/qconfig.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_ext_libpng.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_tools_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml.pri:
../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
../../Qt/6.2.3/gcc_64/mkspecs/features/qt_functions.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/qt_config.prf:
../../Qt/6.2.3/gcc_64/mkspecs/linux-g++/qmake.conf:
../../Qt/6.2.3/gcc_64/mkspecs/features/spec_post.prf:
.qmake.stash:
../../Qt/6.2.3/gcc_64/mkspecs/features/exclusive_builds.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/toolchain.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/default_pre.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/resolve_config.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/default_post.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/qml_debug.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/warn_on.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/qmake_use.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/file_copies.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/testcase_targets.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/exceptions.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/yacc.prf:
../../Qt/6.2.3/gcc_64/mkspecs/features/lex.prf:
qmake-task2.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile qmake-task2.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug

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
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile check
sub-tests-check_ordered: sub-app-check_ordered 
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile check
check: sub-app-check_ordered sub-tests-check_ordered

sub-app-benchmark_ordered:
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile benchmark
sub-tests-benchmark_ordered: sub-app-benchmark_ordered 
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -f Makefile benchmark
benchmark: sub-app-benchmark_ordered sub-tests-benchmark_ordered
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: sub-app-distdir sub-tests-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents ../../Qt/6.2.3/gcc_64/mkspecs/features/spec_pre.prf ../../Qt/6.2.3/gcc_64/mkspecs/common/unix.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/linux.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/sanitize.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/gcc-base-unix.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/g++-base.conf ../../Qt/6.2.3/gcc_64/mkspecs/common/g++-unix.conf ../../Qt/6.2.3/gcc_64/mkspecs/qconfig.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_ext_libpng.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_core_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designer_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_gui_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_help_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_network_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qml_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quick_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_sql_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svg_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_tools_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml.pri ../../Qt/6.2.3/gcc_64/mkspecs/modules/qt_lib_xml_private.pri ../../Qt/6.2.3/gcc_64/mkspecs/features/qt_functions.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/qt_config.prf ../../Qt/6.2.3/gcc_64/mkspecs/linux-g++/qmake.conf ../../Qt/6.2.3/gcc_64/mkspecs/features/spec_post.prf .qmake.stash ../../Qt/6.2.3/gcc_64/mkspecs/features/exclusive_builds.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/toolchain.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/default_pre.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/resolve_config.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/default_post.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/qml_debug.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/warn_on.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/qmake_use.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/file_copies.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/testcase_targets.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/exceptions.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/yacc.prf ../../Qt/6.2.3/gcc_64/mkspecs/features/lex.prf qmake-task2.pro $(DISTDIR)/

sub-app-distdir: FORCE
	@test -d app/ || mkdir -p app/
	cd app/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/app/app.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/app

sub-tests-distdir: FORCE
	@test -d tests/ || mkdir -p tests/
	cd tests/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/mpavlov/testing/task2/tests/tests.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/tests
