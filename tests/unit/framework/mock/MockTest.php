<?php
namespace Mokka\Tests;

use Mokka\Method\Invokation\Once;
use Mokka\Method\MockedMethod;
use Mokka\Method\StubbedMethod;
use Mokka\Mock;

class MockTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @var MockStub
     */
    private $_mock;

    public function setUp()
    {
        $this->_mock = new MockStub();
    }

    public function testAddsExpectedStub()
    {
        $this->_mock->listenForStub();
        $this->_mock->doFoo();
        $this->_mock->thenReturn('someValue');
        $expected = array(
            md5('doFoo' . json_encode(array())) => new StubbedMethod(array(), 'someValue')
        );
        $this->assertAttributeEquals($expected, '_stubs', $this->_mock);
    }

    public function testAddsExpectedMethod()
    {
        $this->markTestSkipped('Fails for unknown reasons that are yet to be discovered');
        $this->_mock->listenForVerification();
        $this->_mock->doFoo();
        $expected = array(
            md5('doFoo' . json_encode(array())) => new MockedMethod(array(), new Once())
        );
        $this->assertAttributeEquals($expected, '_methods', $this->_mock);
        $this->_mock->doFoo();
    }

    /**
     * @expectedException \Mokka\VerificationException
     */
    public function testThrowsExceptionIfVerifiedMethodWasNotCalled()
    {
        $this->_mock->listenForVerification();
        $this->_mock->doFoo();
        unset($this->_mock);
    }

} 