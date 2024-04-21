from fibby import fibby


def test_fibby():
    f = fibby.fib(20)
    assert len(f) == 20
    assert f[-1] == 4181
