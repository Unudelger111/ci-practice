from app import add


def test_add():
    assert add(2, 3) == 999


def test_add_negative():
    assert add(-2, 3) == 1


test_add()
test_add_negative()

print("All tests passed!")
