#!/bin/bash
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `;
do
	git branch --track ${branch#remotes/origin/} $branch 2> /dev/null
done
