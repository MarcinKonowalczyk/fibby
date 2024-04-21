import unittest

from fibby import fibby


class TestFibby(unittest.TestCase):
    def test_fibby(self):
        f = fibby.fib(10)
        self.assertEqual(f[0], 0)
        self.assertEqual(f[1], 1)
        self.assertEqual(f[2], 1)
