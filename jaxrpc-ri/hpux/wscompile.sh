#!/bin/sh
#
# Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.
#
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License v. 2.0, which is available at
# http://www.eclipse.org/legal/epl-2.0.
#
# This Source Code may also be made available under the following Secondary
# Licenses when the conditions for such availability set forth in the
# Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
# version 2 with the GNU Classpath Exception, which is available at
# https://www.gnu.org/software/classpath/license.html.
#
# SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
#

# Script to run WSCompile
#

if [ -z "$JAVA_HOME" ]; then
	echo "ERROR: Set JAVA_HOME to the path where the J2SE (JDK) is installed (e.g., /usr/java/jdk1.4)"
	exit 1
fi

bin_dir=`dirname $0`
WEBSERVICES_LIB=`cd $bin_dir/../share/lib; pwd`
WEBSERVICES_PRIVATE_LIB=`cd $bin_dir/../private/share/lib; pwd`

# Set CLASSPATH
CLASSPATH=$WEBSERVICES_LIB/jaxrpc-impl.jar:$WEBSERVICES_LIB/jaxrpc-api.jar:$WEBSERVICES_PRIVATE_LIB/jaxrpc-spi.jar:$WEBSERVICES_LIB/saaj-api.jar:$WEBSERVICES_LIB/saaj-impl.jar:$WEBSERVICES_LIB/mail.jar:$JAVA_HOME/lib/tools.jar:$WEBSERVICES_PRIVATE_LIB/relaxngDatatype.jar

$JAVA_HOME/bin/java $WSCOMPILE_OPTS -classpath "$CLASSPATH" com.sun.xml.rpc.tools.wscompile.Main "$@"
