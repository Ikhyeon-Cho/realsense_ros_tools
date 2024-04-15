#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import time


class ImageRepublisher:
    def __init__(self):
        # Initialize the node
        rospy.init_node("image_republisher", anonymous=False)
        self.bridge = CvBridge()

        # Set up subscriber and publisher
        self.image_sub = rospy.Subscriber(
            "/camera/color/image_rect_color", Image, self.callback
        )
        self.image_pub = rospy.Publisher("/output_image", Image, queue_size=10)
        self.start_time = time.time()

    def callback(self, data):
        end_time = time.time()  # End time of the processing

        try:
            # Convert the ROS image message to OpenCV format
            # cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")

            # # Convert back to ROS image message and publish
            # ros_image = self.bridge.cv2_to_imgmsg(cv_image, "bgr8")
            self.image_pub.publish(data)

        except CvBridgeError as e:
            rospy.logerr("CvBridge Error: {0}".format(e))

        rospy.loginfo(
            "Callback execution time: {:.1f} ms".format((end_time - self.start_time) * 1000)
        )
        self.start_time = time.time()


if __name__ == "__main__":
    ir = ImageRepublisher()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("Shutting down")
