#
# ~/.bash_functions
#

#  Helper functions
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }

# Copy/Move and follow to destination
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }

# Create dir and enter
mcd () {
    mkdir -p $1
    cd $1
}

# $1:     should be a drive uuid, such as that reported by blkid
# return: return value of 0 if mounted, 1 if not mounted
function is_mounted_by_uuid() {
    input_path=$(readlink -f /dev/disk/by-uuid/"$1")
    input_maj_min=$(stat -c '%T %t' "$input_path" 2>/dev/null)

    cat /proc/mounts | cut -f-1 -d' ' | while read block_device; do
        if [ -b "$block_device" ]; then
            block_device_real=$(readlink -f "$block_device")
            blkdev_maj_min=$(stat -c '%T %t' "$block_device_real")

            if [ "$input_maj_min" == "$blkdev_maj_min" ]; then
                return 255
            fi
        fi
    done

    if [ $? -eq 255 ]; then
        return 0
    else
        return 1
    fi
}
