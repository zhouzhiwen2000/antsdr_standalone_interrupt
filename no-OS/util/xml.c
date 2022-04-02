/***************************************************************************//**
 *   @file   xml.c
 *   @brief  Implementation of xml
 *   @author Cristian Pop (cristian.pop@analog.com)
********************************************************************************
 * Copyright 2019(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/

#include <string.h>
#include <stdlib.h>
#include "xml.h"
#include "error.h"

/******************************************************************************/
/************************ Functions Definitions *******************************/
/******************************************************************************/

/**
 * create attribute
 * @param **attribute pointer to new attribute
 * @param *name attribute name
 * @param *value attribute value
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_create_attribute(struct xml_attribute **attribute, char *name,
			     const char *value)
{
	if(!attribute)
		return FAILURE;
	if(!name)
		return FAILURE;
	if(!value)
		return FAILURE;

	*attribute = calloc(1, sizeof(struct xml_attribute));
	if (!(*attribute))
		return FAILURE;

	(*attribute)->name = calloc(1, strlen(name) + 1);
	if (!(*attribute)->name) {
		free(*attribute);
		return FAILURE;
	}
	strcpy((*attribute)->name, name);

	(*attribute)->value = calloc(1, strlen(value) + 1);
	if (!(*attribute)->value) {
		free((*attribute)->name);
		free(*attribute);
		return FAILURE;
	}
	strcpy((*attribute)->value, value);

	return SUCCESS;
}

/**
 * add attribute to a xml node
 * @param *node pointer to the node, where the attribute is inserted
 * @param *attribute attribute
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_add_attribute(struct xml_node *node,
			  struct xml_attribute *attribute)
{
	if(!node)
		return FAILURE;
	if(!attribute)
		return FAILURE;

	if (!node->attributes) {
		node->attributes = calloc(1, sizeof(struct xml_attribute*));
		if (!node->attributes)
			return FAILURE;
	} else {
		struct xml_attribute **buff = realloc(node->attributes,
						      (node->attr_cnt + 1) * sizeof(struct xml_attribute*));
		if (!buff)
			return FAILURE;
		node->attributes = buff;
	}
	node->attributes[node->attr_cnt] = attribute;
	node->attr_cnt++;

	return SUCCESS;
}

/**
 * create new xml node
 * @param **node pointer to the new node
 * @param *name
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_create_node(struct xml_node **node, char *name)
{
	if(!node)
		return FAILURE;
	if(!name)
		return FAILURE;

	*node = calloc(1, sizeof(struct xml_node));
	if (!(*node))
		return FAILURE;
	(*node)->name = calloc(1, strlen(name) + 1);
	if (!(*node)->name) {
		free(*node);
		return FAILURE;
	}
	strcpy((*node)->name, name);

	return SUCCESS;
}

/**
 * add child node to a parent node
 * @param *node_parent
 * @param *node_child
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_add_node(struct xml_node *node_parent, struct xml_node *node_child)
{
	if(!node_parent)
		return FAILURE;
	if(!node_child)
		return FAILURE;

	if (!node_parent->children) {
		node_parent->children = calloc(1, sizeof(struct xml_node*));
		if (!node_parent->children)
			return FAILURE;
	} else {
		struct xml_node **buff = realloc(node_parent->children,
						 (node_parent->children_cnt + 1) * sizeof(struct xml_node*));
		if (!buff)
			return FAILURE;
		node_parent->children = buff;
	}
	node_parent->children[node_parent->children_cnt] = node_child;
	node_parent->children_cnt++;

	return SUCCESS;
}

/**
 * delete attribute
 * @param *attribute
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_delete_attribute(struct xml_attribute *attribute)
{
	free(attribute->name);
	free(attribute->value);
	free(attribute);

	return SUCCESS;
}

/**
 * delete xml node
 * @param *node
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_delete_node(struct xml_node *node)
{
	uint16_t i;
	for (i = 0; i < node->attr_cnt; i++) {
		xml_delete_attribute(node->attributes[i]);
	}
	for (i = 0; i < node->children_cnt; i++) {
		xml_delete_node(node->children[i]);
	}
	free(node->name);
	free(node->attributes);
	free(node->children);
	free(node);

	return SUCCESS;
}

/**
 * print string to xml_document.
 * @param *doc
 * @param *data to be written.
 * @return SUCCESS in case of success or negative value otherwise
 */
static ssize_t xml_print_to_doc(struct xml_document *doc, char *data)
{
	uint32_t calc_len, print_len;

	calc_len = strlen(data) + 1;
	char *buff = realloc(doc->buff, doc->index + calc_len);
	if (!buff)
		return FAILURE;
	doc->buff = buff;
	print_len = sprintf(&(doc->buff[doc->index]), "%s", data);
	if(print_len != calc_len - 1)
		return FAILURE;
	doc->index +=print_len;

	return SUCCESS;
}

/**
 * print xml tree into a xml document
 * @param **document
 * @param *node pointer to parent node, that contains the xml tree
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_create_document(struct xml_document **document,
			    struct xml_node *node)
{
	uint16_t i;
	ssize_t ret;
	struct xml_document *doc;

	if(!document)
		return FAILURE;
	if(!node)
		return FAILURE;

	if (!(*document)) {
		*document = calloc(1, sizeof(struct xml_document));
		if (!(*document))
			return FAILURE;
	}
	doc = *document;

	ret = xml_print_to_doc(doc, "<");
	if (ret < 0)
		goto error;
	ret = xml_print_to_doc(doc, node->name);
	if (ret < 0)
		goto error;
	ret = xml_print_to_doc(doc, " ");
	if (ret < 0)
		goto error;

	for (i = 0; i < node->attr_cnt; i++) {
		ret = xml_print_to_doc(doc, node->attributes[i]->name);
		if (ret < 0)
			goto error;
		ret = xml_print_to_doc(doc, "=\"");
		if (ret < 0)
			goto error;
		ret = xml_print_to_doc(doc, node->attributes[i]->value);
		if (ret < 0)
			goto error;
		ret = xml_print_to_doc(doc, "\" ");
		if (ret < 0)
			goto error;
	}

	if (node->children_cnt == 0) {
		ret = xml_print_to_doc(doc, "/>\n");
		if (ret < 0)
			goto error;

		return SUCCESS;
	} else {
		ret = xml_print_to_doc(doc, ">\n");
		if (ret < 0)
			goto error;
	}

	for (i = 0; i < node->children_cnt; i++) {
		ret = xml_create_document(document, node->children[i]);
		if (ret < 0)
			return ret;
	}

	ret = xml_print_to_doc(doc, "</");
	if (ret < 0)
		goto error;
	ret = xml_print_to_doc(doc, node->name);
	if (ret < 0)
		goto error;
	ret = xml_print_to_doc(doc, ">\n");
	if (ret < 0)
		goto error;

	return SUCCESS;

error:
	free(doc->buff);
	free(doc);

	return FAILURE;
}

/**
 * delete xml document
 * @param **document pointer to document
 * @return SUCCESS in case of success or negative value otherwise
 */
ssize_t xml_delete_document(struct xml_document *document)
{
	free(document->buff);
	free(document);

	return SUCCESS;
}
