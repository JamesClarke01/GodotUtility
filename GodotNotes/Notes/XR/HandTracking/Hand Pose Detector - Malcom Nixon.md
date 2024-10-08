Detectors detect hand poses
Controllers extend from detectors and trigger an action on a controller

Actions in the controller Action Name field correspond to the actions in the action map
![[Pasted image 20240920154744.png]]

The virtual controller node being used needs to share the tracker name used by the controller
![[Pasted image 20240923140531.png]]
![[Pasted image 20240923140551.png]]
# Pickup & XRTools
Get the controller node to send the grip action:
![[Pasted image 20240923140803.png]]

Make sure XRToolsFunctionPickup is attached to the controller:
![[Pasted image 20240923140953.png]]

You can edit pose thresholds:
![[Pasted image 20241007160231.png]]
# Notes on poses
## Grip
Thumb must be on side of hand (as if just stopped doing a thumbs up) for it to detect grip properly