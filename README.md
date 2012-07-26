Ec2Name
===========

Quick way to tag the name of the instance so that it shows up on aws console.

Setup
------------

<pre>
gem install ec2_name
</pre>

Set up a ~/.br-cloud.yml that holds the aws credentials.  File should look like this:

<pre>
$ cat ~/.br-cloud.yml
--- 
:aws_secret_id: XXXXXXX
:aws_secret_key: XXXXXXXXXXXXXXXXXXXXX
$ 
</pre>

Usage
-------------------

If the script is being on an ec2 instance.

<pre>
ec2_name [NAME]
</pre>

If you are running it locally and want to test it.

<pre>
INSTANCE_ID=i-XXXX ec2_name [NAME]
</pre>