
baseurl="http://www.frozone.mikadosoftware.com/"

from rhaptos2.client import restclient

def test_version():
    r  = restclient.get_version(baseurl + "/version/")
    if r.status_code != 200:
        return False
    else:
        return True
