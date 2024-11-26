from setuptools import setup

setup(name="funniest",
      version="0.1",
      description="The funniest joke in the world",
      author="Flying Circus",
      license="MIT",
      packages=["funniest"],
      zip_safe=False,
      install_requires=["setuptools>75.0.0"],
      scripts=["bin/funniest-joke"],
      )
