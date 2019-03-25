## VK Notification
This action for VK Notification

### Secrets
* VK_TOKEN (Required) - access_token of group, from which messages will be sent (with "messages" scope)

### Environment
* VK_USERS (Required) - list of users id, who need to be notified. separated by ","
* VK_MESSAGE (Optional) - text of notification

##### Example
```
action "VK Notification" {
    uses = "hit2hat/VK-Notifications"
    secrets = ["VK_TOKEN"]
    env = {
        VK_USERS = "182625786"
    }
}
```
