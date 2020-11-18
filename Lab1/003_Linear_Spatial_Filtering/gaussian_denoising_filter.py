# Gaussian Blur
# good for random noise but too much will blur the image.
# not good for salt and pepper noise->(median filter)

# https://www.youtube.com/watch?v=xCHbcVUCYBI
# https://github.com/bnsreenu/python_for_microscopists/blob/master/096_What%20is%20Gaussian%20denoising.py

# cv2.GaussianBlur(img, (3,3), 0, borderType=cv2.BORDER_CONSTANT)

# skimage.filters.gaussian(img, sigma=1, mode='constant', cval=0.0)
# cval refer to constant values



# others basic
# Normal Distribution -> just by looking at the graph, we can tell that
# there is a high probability that a newborn baby will be between 19 and 21 inches tall 
# https://www.youtube.com/watch?v=rzFX5NWojp0





