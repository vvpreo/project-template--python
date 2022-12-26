import pytest

print("python file with tests must start with 'test_'")


def test_example():
    print("Any test function's name must start with 'test_'")


@pytest.mark.parametrize(
    "some_input",  # variable name
    [
        ["intent1", "intent2"],
        [],
        ["boogawooga"]
    ]  # values for test
)
def test_example_with_parametrization(some_input):
    print(some_input)
    assert some_input is not None
