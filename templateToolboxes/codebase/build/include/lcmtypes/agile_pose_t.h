// THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
// BY HAND!!
//
// Generated by lcm-gen

#include <stdint.h>
#include <stdlib.h>
#include <lcm/lcm_coretypes.h>
#include <lcm/lcm.h>

#ifndef _agile_pose_t_h
#define _agile_pose_t_h

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _agile_pose_t agile_pose_t;
struct _agile_pose_t
{
    int64_t    timestamp;
    double     position[3];
    double     orientation[4];
};

/**
 * Create a deep copy of a agile_pose_t.
 * When no longer needed, destroy it with agile_pose_t_destroy()
 */
agile_pose_t* agile_pose_t_copy(const agile_pose_t* to_copy);

/**
 * Destroy an instance of agile_pose_t created by agile_pose_t_copy()
 */
void agile_pose_t_destroy(agile_pose_t* to_destroy);

/**
 * Identifies a single subscription.  This is an opaque data type.
 */
typedef struct _agile_pose_t_subscription_t agile_pose_t_subscription_t;

/**
 * Prototype for a callback function invoked when a message of type
 * agile_pose_t is received.
 */
typedef void(*agile_pose_t_handler_t)(const lcm_recv_buf_t *rbuf,
             const char *channel, const agile_pose_t *msg, void *userdata);

/**
 * Publish a message of type agile_pose_t using LCM.
 *
 * @param lcm The LCM instance to publish with.
 * @param channel The channel to publish on.
 * @param msg The message to publish.
 * @return 0 on success, <0 on error.  Success means LCM has transferred
 * responsibility of the message data to the OS.
 */
int agile_pose_t_publish(lcm_t *lcm, const char *channel, const agile_pose_t *msg);

/**
 * Subscribe to messages of type agile_pose_t using LCM.
 *
 * @param lcm The LCM instance to subscribe with.
 * @param channel The channel to subscribe to.
 * @param handler The callback function invoked by LCM when a message is received.
 *                This function is invoked by LCM during calls to lcm_handle() and
 *                lcm_handle_timeout().
 * @param userdata An opaque pointer passed to @p handler when it is invoked.
 * @return 0 on success, <0 if an error occured
 */
agile_pose_t_subscription_t* agile_pose_t_subscribe(lcm_t *lcm, const char *channel, agile_pose_t_handler_t handler, void *userdata);

/**
 * Removes and destroys a subscription created by agile_pose_t_subscribe()
 */
int agile_pose_t_unsubscribe(lcm_t *lcm, agile_pose_t_subscription_t* hid);

/**
 * Sets the queue capacity for a subscription.
 * Some LCM providers (e.g., the default multicast provider) are implemented
 * using a background receive thread that constantly revceives messages from
 * the network.  As these messages are received, they are buffered on
 * per-subscription queues until dispatched by lcm_handle().  This function
 * how many messages are queued before dropping messages.
 *
 * @param subs the subscription to modify.
 * @param num_messages The maximum number of messages to queue
 *  on the subscription.
 * @return 0 on success, <0 if an error occured
 */
int agile_pose_t_subscription_set_queue_capacity(agile_pose_t_subscription_t* subs,
                              int num_messages);

/**
 * Encode a message of type agile_pose_t into binary form.
 *
 * @param buf The output buffer.
 * @param offset Encoding starts at this byte offset into @p buf.
 * @param maxlen Maximum number of bytes to write.  This should generally
 *               be equal to agile_pose_t_encoded_size().
 * @param msg The message to encode.
 * @return The number of bytes encoded, or <0 if an error occured.
 */
int agile_pose_t_encode(void *buf, int offset, int maxlen, const agile_pose_t *p);

/**
 * Decode a message of type agile_pose_t from binary form.
 * When decoding messages containing strings or variable-length arrays, this
 * function may allocate memory.  When finished with the decoded message,
 * release allocated resources with agile_pose_t_decode_cleanup().
 *
 * @param buf The buffer containing the encoded message
 * @param offset The byte offset into @p buf where the encoded message starts.
 * @param maxlen The maximum number of bytes to read while decoding.
 * @param msg Output parameter where the decoded message is stored
 * @return The number of bytes decoded, or <0 if an error occured.
 */
int agile_pose_t_decode(const void *buf, int offset, int maxlen, agile_pose_t *msg);

/**
 * Release resources allocated by agile_pose_t_decode()
 * @return 0
 */
int agile_pose_t_decode_cleanup(agile_pose_t *p);

/**
 * Check how many bytes are required to encode a message of type agile_pose_t
 */
int agile_pose_t_encoded_size(const agile_pose_t *p);

// LCM support functions. Users should not call these
int64_t __agile_pose_t_get_hash(void);
int64_t __agile_pose_t_hash_recursive(const __lcm_hash_ptr *p);
int     __agile_pose_t_encode_array(void *buf, int offset, int maxlen, const agile_pose_t *p, int elements);
int     __agile_pose_t_decode_array(const void *buf, int offset, int maxlen, agile_pose_t *p, int elements);
int     __agile_pose_t_decode_array_cleanup(agile_pose_t *p, int elements);
int     __agile_pose_t_encoded_array_size(const agile_pose_t *p, int elements);
int     __agile_pose_t_clone_array(const agile_pose_t *p, agile_pose_t *q, int elements);

#ifdef __cplusplus
}
#endif

#endif
