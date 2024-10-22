/*
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
 * 
 * Copyright 1997-2007 Oracle America, Inc. All rights reserved.
 * 
 * The contents of this file are subject to the terms of either the GNU
 * General Public License Version 2 only ("GPL") or the Common Development
 * and Distribution License("CDDL") (collectively, the "License").  You
 * may not use this file except in compliance with the License. You can obtain
 * a copy of the License at https://glassfish.dev.java.net/public/CDDL+GPL.html
 * or glassfish/bootstrap/legal/LICENSE.txt.  See the License for the specific
 * language governing permissions and limitations under the License.
 * 
 * When distributing the software, include this License Header Notice in each
 * file and include the License file at glassfish/bootstrap/legal/LICENSE.txt.
 * Sun designates this particular file as subject to the "Classpath" exception
 * as provided by Sun in the GPL Version 2 section of the License file that
 * accompanied this code.  If applicable, add the following below the License
 * Header, with the fields enclosed by brackets [] replaced by your own
 * identifying information: "Portions Copyrighted [year]
 * [name of copyright owner]"
 * 
 * Contributor(s):
 * 
 * If you wish your version of this file to be governed by only the CDDL or
 * only the GPL Version 2, indicate your decision by adding "[Contributor]
 * elects to include this software in this distribution under the [CDDL or GPL
 * Version 2] license."  If you don't indicate a single choice of license, a
 * recipient has the option to distribute your version of this file under
 * either the CDDL, the GPL Version 2 or to extend the choice of license to
 * its licensees as provided above.  However, if you add GPL Version 2 code
 * and therefore, elected the GPL Version 2 license, then the option applies
 * only if the new code is made subject to such option by the copyright
 * holder.
 */

/*
Copyright (c) 2007, Yahoo! Inc. All rights reserved.
Code licensed under the BSD License:
http://developer.yahoo.net/yui/license.txt
version: 2.2.0
*/

(function(){YAHOO.widget.TabView=function(el,attr){attr=attr||{};if(arguments.length==1&&!YAHOO.lang.isString(el)&&!el.nodeName){attr=el;el=attr.element||null;}
if(!el&&!attr.element){el=_createTabViewElement.call(this,attr);}
YAHOO.widget.TabView.superclass.constructor.call(this,el,attr);};YAHOO.extend(YAHOO.widget.TabView,YAHOO.util.Element);var proto=YAHOO.widget.TabView.prototype;var Dom=YAHOO.util.Dom;var Event=YAHOO.util.Event;var Tab=YAHOO.widget.Tab;proto.CLASSNAME='yui-navset';proto.TAB_PARENT_CLASSNAME='yui-nav';proto.CONTENT_PARENT_CLASSNAME='yui-content';proto._tabParent=null;proto._contentParent=null;proto.addTab=function(tab,index){var tabs=this.get('tabs');if(!tabs){this._queue[this._queue.length]=['addTab',arguments];return false;}
index=(index===undefined)?tabs.length:index;var before=this.getTab(index);var self=this;var el=this.get('element');var tabParent=this._tabParent;var contentParent=this._contentParent;var tabElement=tab.get('element');var contentEl=tab.get('contentEl');if(before){tabParent.insertBefore(tabElement,before.get('element'));}else{tabParent.appendChild(tabElement);}
if(contentEl&&!Dom.isAncestor(contentParent,contentEl)){contentParent.appendChild(contentEl);}
if(!tab.get('active')){tab.set('contentVisible',false,true);}else{this.set('activeTab',tab,true);}
var activate=function(e){YAHOO.util.Event.preventDefault(e);self.set('activeTab',this);};tab.addListener(tab.get('activationEvent'),activate);tab.addListener('activationEventChange',function(e){if(e.prevValue!=e.newValue){tab.removeListener(e.prevValue,activate);tab.addListener(e.newValue,activate);}});tabs.splice(index,0,tab);};proto.DOMEventHandler=function(e){var el=this.get('element');var target=YAHOO.util.Event.getTarget(e);var tabParent=this._tabParent;if(Dom.isAncestor(tabParent,target)){var tabEl;var tab=null;var contentEl;var tabs=this.get('tabs');for(var i=0,len=tabs.length;i<len;i++){tabEl=tabs[i].get('element');contentEl=tabs[i].get('contentEl');if(target==tabEl||Dom.isAncestor(tabEl,target)){tab=tabs[i];break;}}
if(tab){tab.fireEvent(e.type,e);}}};proto.getTab=function(index){return this.get('tabs')[index];};proto.getTabIndex=function(tab){var index=null;var tabs=this.get('tabs');for(var i=0,len=tabs.length;i<len;++i){if(tab==tabs[i]){index=i;break;}}
return index;};proto.removeTab=function(tab){var tabCount=this.get('tabs').length;var index=this.getTabIndex(tab);var nextIndex=index+1;if(tab==this.get('activeTab')){if(tabCount>1){if(index+1==tabCount){this.set('activeIndex',index-1);}else{this.set('activeIndex',index+1);}}}
this._tabParent.removeChild(tab.get('element'));this._contentParent.removeChild(tab.get('contentEl'));this._configs.tabs.value.splice(index,1);};proto.toString=function(){var name=this.get('id')||this.get('tagName');return"TabView "+name;};proto.contentTransition=function(newTab,oldTab){newTab.set('contentVisible',true);oldTab.set('contentVisible',false);};proto.initAttributes=function(attr){YAHOO.widget.TabView.superclass.initAttributes.call(this,attr);if(!attr.orientation){attr.orientation='top';}
var el=this.get('element');this.setAttributeConfig('tabs',{value:[],readOnly:true});this._tabParent=this.getElementsByClassName(this.TAB_PARENT_CLASSNAME,'ul')[0]||_createTabParent.call(this);this._contentParent=this.getElementsByClassName(this.CONTENT_PARENT_CLASSNAME,'div')[0]||_createContentParent.call(this);this.setAttributeConfig('orientation',{value:attr.orientation,method:function(value){var current=this.get('orientation');this.addClass('yui-navset-'+value);if(current!=value){this.removeClass('yui-navset-'+current);}
switch(value){case'bottom':this.appendChild(this._tabParent);break;}}});this.setAttributeConfig('activeIndex',{value:attr.activeIndex,method:function(value){this.set('activeTab',this.getTab(value));},validator:function(value){return!this.getTab(value).get('disabled');}});this.setAttributeConfig('activeTab',{value:attr.activeTab,method:function(tab){var activeTab=this.get('activeTab');if(tab){tab.set('active',true);this._configs['activeIndex'].value=this.getTabIndex(tab);}
if(activeTab&&activeTab!=tab){activeTab.set('active',false);}
if(activeTab&&tab!=activeTab){this.contentTransition(tab,activeTab);}else if(tab){tab.set('contentVisible',true);}},validator:function(value){return!value.get('disabled');}});if(this._tabParent){_initTabs.call(this);}
for(var type in this.DOM_EVENTS){if(YAHOO.lang.hasOwnProperty(this.DOM_EVENTS,type)){this.addListener.call(this,type,this.DOMEventHandler);}}};var _initTabs=function(){var tab,attr,contentEl;var el=this.get('element');var tabs=_getChildNodes(this._tabParent);var contentElements=_getChildNodes(this._contentParent);for(var i=0,len=tabs.length;i<len;++i){attr={};if(contentElements[i]){attr.contentEl=contentElements[i];}
tab=new YAHOO.widget.Tab(tabs[i],attr);this.addTab(tab);if(tab.hasClass(tab.ACTIVE_CLASSNAME)){this._configs.activeTab.value=tab;}}};var _createTabViewElement=function(attr){var el=document.createElement('div');if(this.CLASSNAME){el.className=this.CLASSNAME;}
return el;};var _createTabParent=function(attr){var el=document.createElement('ul');if(this.TAB_PARENT_CLASSNAME){el.className=this.TAB_PARENT_CLASSNAME;}
this.get('element').appendChild(el);return el;};var _createContentParent=function(attr){var el=document.createElement('div');if(this.CONTENT_PARENT_CLASSNAME){el.className=this.CONTENT_PARENT_CLASSNAME;}
this.get('element').appendChild(el);return el;};var _getChildNodes=function(el){var nodes=[];var childNodes=el.childNodes;for(var i=0,len=childNodes.length;i<len;++i){if(childNodes[i].nodeType==1){nodes[nodes.length]=childNodes[i];}}
return nodes;};})();(function(){var Dom=YAHOO.util.Dom,Event=YAHOO.util.Event;var Tab=function(el,attr){attr=attr||{};if(arguments.length==1&&!YAHOO.lang.isString(el)&&!el.nodeName){attr=el;el=attr.element;}
if(!el&&!attr.element){el=_createTabElement.call(this,attr);}
this.loadHandler={success:function(o){this.set('content',o.responseText);},failure:function(o){}};Tab.superclass.constructor.call(this,el,attr);this.DOM_EVENTS={};};YAHOO.extend(Tab,YAHOO.util.Element);var proto=Tab.prototype;proto.LABEL_TAGNAME='em';proto.ACTIVE_CLASSNAME='selected';proto.DISABLED_CLASSNAME='disabled';proto.LOADING_CLASSNAME='loading';proto.dataConnection=null;proto.loadHandler=null;proto.toString=function(){var el=this.get('element');var id=el.id||el.tagName;return"Tab "+id;};proto.initAttributes=function(attr){attr=attr||{};Tab.superclass.initAttributes.call(this,attr);var el=this.get('element');this.setAttributeConfig('activationEvent',{value:attr.activationEvent||'click'});this.setAttributeConfig('labelEl',{value:attr.labelEl||_getlabelEl.call(this),method:function(value){var current=this.get('labelEl');if(current){if(current==value){return false;}
this.replaceChild(value,current);}else if(el.firstChild){this.insertBefore(value,el.firstChild);}else{this.appendChild(value);}}});this.setAttributeConfig('label',{value:attr.label||_getLabel.call(this),method:function(value){var labelEl=this.get('labelEl');if(!labelEl){this.set('labelEl',_createlabelEl.call(this));}
_setLabel.call(this,value);}});this.setAttributeConfig('contentEl',{value:attr.contentEl||document.createElement('div'),method:function(value){var current=this.get('contentEl');if(current){if(current==value){return false;}
this.replaceChild(value,current);}}});this.setAttributeConfig('content',{value:attr.content,method:function(value){this.get('contentEl').innerHTML=value;}});var _dataLoaded=false;this.setAttributeConfig('dataSrc',{value:attr.dataSrc});this.setAttributeConfig('cacheData',{value:attr.cacheData||false,validator:YAHOO.lang.isBoolean});this.setAttributeConfig('loadMethod',{value:attr.loadMethod||'GET',validator:YAHOO.lang.isString});this.setAttributeConfig('dataLoaded',{value:false,validator:YAHOO.lang.isBoolean,writeOnce:true});this.setAttributeConfig('dataTimeout',{value:attr.dataTimeout||null,validator:YAHOO.lang.isNumber});this.setAttributeConfig('active',{value:attr.active||this.hasClass(this.ACTIVE_CLASSNAME),method:function(value){if(value===true){this.addClass(this.ACTIVE_CLASSNAME);this.set('title','active');}else{this.removeClass(this.ACTIVE_CLASSNAME);this.set('title','');}},validator:function(value){return YAHOO.lang.isBoolean(value)&&!this.get('disabled');}});this.setAttributeConfig('disabled',{value:attr.disabled||this.hasClass(this.DISABLED_CLASSNAME),method:function(value){if(value===true){Dom.addClass(this.get('element'),this.DISABLED_CLASSNAME);}else{Dom.removeClass(this.get('element'),this.DISABLED_CLASSNAME);}},validator:YAHOO.lang.isBoolean});this.setAttributeConfig('href',{value:attr.href||'#',method:function(value){this.getElementsByTagName('a')[0].href=value;},validator:YAHOO.lang.isString});this.setAttributeConfig('contentVisible',{value:attr.contentVisible,method:function(value){if(value){this.get('contentEl').style.display='block';if(this.get('dataSrc')){if(!this.get('dataLoaded')||!this.get('cacheData')){_dataConnect.call(this);}}}else{this.get('contentEl').style.display='none';}},validator:YAHOO.lang.isBoolean});};var _createTabElement=function(attr){var el=document.createElement('li');var a=document.createElement('a');a.href=attr.href||'#';el.appendChild(a);var label=attr.label||null;var labelEl=attr.labelEl||null;if(labelEl){if(!label){label=_getLabel.call(this,labelEl);}}else{labelEl=_createlabelEl.call(this);}
a.appendChild(labelEl);return el;};var _getlabelEl=function(){return this.getElementsByTagName(this.LABEL_TAGNAME)[0];};var _createlabelEl=function(){var el=document.createElement(this.LABEL_TAGNAME);return el;};var _setLabel=function(label){var el=this.get('labelEl');el.innerHTML=label;};var _getLabel=function(){var label,el=this.get('labelEl');if(!el){return undefined;}
return el.innerHTML;};var _dataConnect=function(){if(!YAHOO.util.Connect){return false;}
Dom.addClass(this.get('contentEl').parentNode,this.LOADING_CLASSNAME);this.dataConnection=YAHOO.util.Connect.asyncRequest(this.get('loadMethod'),this.get('dataSrc'),{success:function(o){this.loadHandler.success.call(this,o);this.set('dataLoaded',true);this.dataConnection=null;Dom.removeClass(this.get('contentEl').parentNode,this.LOADING_CLASSNAME);},failure:function(o){this.loadHandler.failure.call(this,o);this.dataConnection=null;Dom.removeClass(this.get('contentEl').parentNode,this.LOADING_CLASSNAME);},scope:this,timeout:this.get('dataTimeout')});};YAHOO.widget.Tab=Tab;})();YAHOO.register("tabview",YAHOO.widget.TabView,{version:"2.2.0",build:"127"});