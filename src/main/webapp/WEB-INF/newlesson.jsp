The JSTL core tag provides variable support, URL management, flow control etc.
The syntax used for including JSTL core library in your JSP is:

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>

#1.JSTL Core <x:out> Tag
    The <c:out> tag is similar to JSP expression tag, but it can only be used with expression.
    It will display the result of an expression, similar to the way < %=...% > work.
The < c:out > tag automatically escape the XML tags. Hence they aren't evaluated as actual tags.
 example:       <x:out value="${'Welcome to Dream Big'}"/>

#2.JSTL Core <x:import> Tag
The <x:import> is similar to jsp 'include', with an additional feature of including the content of any resource either within server or outside the server.

This tag provides all the functionality of the <include > action and it also allows the inclusion of absolute URLs.

For example: Using an import tag the content from a different FTP server and website can be accessed.
                <x:import var="data" url="http://www.google.com"/>
                <x:out value="${data}"/>
 #3. JSTL Core <c:set> Tag
 It is used to set the result of an expression evaluated in a 'scope'.
 The <x:set> tag is helpful because it evaluates the expression and use the result to set a value of java.util.Map or JavaBean.

 This tag is similar to jsp:setProperty action tag.
                        <x:set var="Income" scope="session" value="${4000*4}"/>
                        <x:out value="${Income}"/>
 #4.STL Core <c:remove> Tag
It is used for removing the specified variable from a particular scope.
This action is not particularly helpful, but it can be used for ensuring that a JSP can also clean up any scope resources.

The <x:remove > tag removes the variable from either a first scope or a specified scope.

                                <x:set var="income" scope="session" value="${4000*4}"/>
                                <p>Before Remove Value is: <x:out value="${income}"/></p>
                                <x:remove var="income"/>
                                <p>After Remove Value is: <x:out value="${income}"/></p>
#5.JSTL Core <x:catch> Tag
It is used for Catches any Throwable exceptions that occurs in the body and optionally exposes it.
In general it is used for error handling and to deal more easily with the problem occur in program.
 The < x:catch > tag catches any exceptions that occurs in a program body.
                                    <x:catch var ="catchtheException">
                                        <% int x = 2/0;%>
                                    </x:catch>

                                    <x:if test = "${catchtheException != null}">
                                        <p>The type of exception is : ${catchtheException} <br />
                                            There is an exception: ${catchtheException.message}</p>
                                    </x:if>