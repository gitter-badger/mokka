��          \       �       �   E   �      �      �   �        �  P   �  t   $  G  �  U   �     7     S  �   [     C  U   U  �   �   A stubbed method can throw an exception instead of returning a value: Combining Stubs and Mocks Stubbing Stubbing a method lets you define a return value. A stubbed method does not have an Invokation Rule (like mocked methods), so if a stubbed method is not called, no exception is thrown. Throwing Exceptions You can also use the special AnythingArgument introduced in :doc:`mocking` here: You can combine mocks and stubs if you want to verify that a method gets called and also want to set a return value: Project-Id-Version: Mokka PHP Mocking Framework 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-09-29 23:20+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 Eine gestubbte Methode kann eine Exception werfen, anstatt einen Wert zurückzugeben: Stubs und Mocks kombinieren Stubben Mit dem Stubben kann der Rückgabewert einer Methode vorgegeben werden.Eine gestubbte Methode hat keine Invokation Rule (wie gemockte Methoden). Wird eine gestubbte Methode nicht aufgerufen, wird folglich keine Exception geworfen.  Exceptions werfen Hier kann auch das in :doc:`mocking` eingeführte AnythingArgument verwendert werden: Mocks und Stubs können kombiniert werden, um einen Rückgabewert zu setzen und zusätzlich sicherzustellen, dass die Methode aufgerufen wird: 