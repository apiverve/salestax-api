from setuptools import setup, find_packages

setup(
    name='apiverve_salestaxlookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sales Tax Lookup is a US sales tax rate API: send a five-digit ZIP code or a two-letter state code and get the current combined sales tax rate back as JSON. The Free plan returns the state and the combined rate; paid plans add the state, county, city and special district rates that make it up.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/salestax?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
