from setuptools import setup, find_packages

setup(
    name='apiverve_salestaxlookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sales Tax Lookup is a US sales tax API that finds current sales tax rates for any US ZIP code or two-letter state abbreviation. It returns the jurisdiction state code and the estimated combined tax rate.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/salestax?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
