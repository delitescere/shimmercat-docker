# ShimmerCat

This is an unofficial Docker container for ShimmerCat.

Are you a performance-conscious web developer? Then ShimmerCat is the tool for you. Unlike general purpose web servers, ShimmerCat seeks to dramatically reduce the amount of work that it takes to create a web application that loads in a fraction of the time. Start developing fast-loading HTTPS+HTTP/2 websites with a tool for the purpose!

See https://www.shimmercat.com/ for more information.

## Build

To build the image you *must* `git lfs checkout` beforehand in order to resolve the binary artifacts.

## Use

The default is to run in "devlove" mode in the foreground, so use:

`docker run --rm --volume $PWD:/srv/www -p 443:4043 shimmercat`

To query that instance using `curl`, where `<hostname>` is one listed in `devlove.yaml` (e.g. `localhost`)

`curl --cacert .config/mousebox/mousebox_ca_root_*.pem -I https://<hostname>/`

## Notes

* If you change `<hostname>` in `devlove.yaml`, you'll have to `rm -rf .shimmercat.loves.devs`. It will be re-created next run using the new host name.
