from setuptools import setup, find_packages

setup(
    name='apiverve_salestaxlookup',
    version='1.2.4',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sales Tax Lookup is a US sales tax rate API: send a ZIP or ZIP+4 code or a two-letter state code and get the current combined sales tax rate, city and state back as JSON. Paid plans add the state, county, city and special district rates that make it up, and whether the state taxes at origin or destination.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/salestax?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
