#!/bin/bash

get_current_config() {
    current_cluster=$(kubectl config current-context)
    current_namespace=$(kubectl config view -o=jsonpath="{.contexts[?(@.name==\"${current_cluster}\")].context.namespace}")
    echo "(${current_cluster}:${current_namespace})"
}
