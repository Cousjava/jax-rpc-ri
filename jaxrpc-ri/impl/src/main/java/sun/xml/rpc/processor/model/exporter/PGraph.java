/*
 * Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0, which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the
 * Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
 * version 2 with the GNU Classpath Exception, which is available at
 * https://www.gnu.org/software/classpath/license.html.
 *
 * SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
 */

package com.sun.xml.rpc.processor.model.exporter;

import javax.xml.namespace.QName;

/**
 * @author JAX-RPC Development Team
 */
public class PGraph {
    
    public PGraph() {}
    
    public PObject getRoot() {
        return root;
    }
    
    public void setRoot(PObject o) {
        root = o;
    }
    
    public String getVersion() {
        return version;
    }
    
    public void setVersion(String s) {
        version = s;
    }
    
    public QName getName() {
        return name;
    }
    
    public void setName(QName n) {
        name = n;
    }
    
    private QName name;
    private PObject root;
    private String version;
}
