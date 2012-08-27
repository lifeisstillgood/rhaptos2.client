
'''
setup.py for rhaptos2

'''

from distutils.core import setup
import os, glob

def get_version():

    '''return version from fixed always must exist file

       Making very broad assumptions about the 
       existence of files '''
    
    v = open('rhaptos2/client/version.txt').read().strip()
    return v




def main():

    setup(name='rhaptos2.client',
          version=get_version(),
          packages=['rhaptos2.client'
                   ],
          namespace_packages = ['rhaptos2'],
          author='See AUTHORS.txt',
          author_email='info@cnx.org',
          url='https://github.com/Connexions/rhaptos2.repo',
          license='LICENSE.txt',
          description='REST based (requests) client to run various tests for rhaptos API',
          long_description='see description',
          install_requires=[
              ,"statsd"
              ,"requests"
              ,"pylint"
              ,"nose"
              ,"rhaptos2.common"
              ,"unittest-xml-reporting"
                           ],
          scripts=glob.glob('scripts/*'),

          package_data={'rhaptos2.client': ['version.txt', 
                                            'tests/*.*'],
                        },

          
          )



if __name__ == '__main__':
    main()

