??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
n
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameidentifiers
g
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes
:d*
dtype0
p

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *
shared_name
candidates
i
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes

:d *
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:e *%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

:e *
dtype0
j

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name96*
value_dtype0	
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_1Const*
_output_shapes
:d*
dtype0*?
value?B?dB1B10B100B11B12B13B14B15B16B17B18B19B2B20B21B22B23B24B25B26B27B28B29B3B30B31B32B33B34B35B36B37B38B39B4B40B41B42B43B44B45B46B47B48B49B5B50B51B52B53B54B55B56B57B58B59B6B60B61B62B63B64B65B66B67B68B69B7B70B71B72B73B74B75B76B77B78B79B8B80B81B82B83B84B85B86B87B88B89B9B90B91B92B93B94B95B96B97B98B99
?
Const_2Const*
_output_shapes
:d*
dtype0	*?
value?B?	d"?                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_2052
&
NoOpNoOp^StatefulPartitionedCall
?
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
query_model
identifiers
_identifiers

candidates
_candidates
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
query_with_exclusions

signatures*
?
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*

0*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 
* 

serving_default* 
#
lookup_table
	keras_api* 
?

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*

0*

0*
* 
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
TN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0*
* 
* 
* 
* 
R
)_initializer
*_create_resource
+_initialize
,_destroy_resource* 
* 

0*

0*
* 
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
r
serving_default_input_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstembedding/embeddings
candidatesidentifiers*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_1962
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOpConst_3*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_2090
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_2109??
?
?
__inference__traced_save_2090
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop
savev2_const_3

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop/savev2_embedding_embeddings_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*1
_input_shapes 
: :d:d :e : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:d:$ 

_output_shapes

:d :$ 

_output_shapes

:e :

_output_shapes
: 
?	
?
*__inference_brute_force_layer_call_fn_1897
queries
unknown
	unknown_0	
	unknown_1:e 
	unknown_2:d 
	unknown_3:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_1789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?	
?
"__inference_signature_wrapper_1962
input_1
unknown
	unknown_0	
	unknown_1:e 
	unknown_2:d 
	unknown_3:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_1601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
+
__inference__destroyer_2044
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1863
input_1
sequential_1845
sequential_1847	!
sequential_1849:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_1845sequential_1847sequential_1849*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1667t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_1621

inputs	'
embedding_lookup_1615:e 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1615inputs*
Tindices0	*(
_class
loc:@embedding_lookup/1615*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1615*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_brute_force_layer_call_fn_1880
queries
unknown
	unknown_0	
	unknown_1:e 
	unknown_2:d 
	unknown_3:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_1734o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_1973

inputs
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1626o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference_<lambda>_20525
1key_value_init95_lookuptableimportv2_table_handle-
)key_value_init95_lookuptableimportv2_keys/
+key_value_init95_lookuptableimportv2_values	
identity??$key_value_init95/LookupTableImportV2?
$key_value_init95/LookupTableImportV2LookupTableImportV21key_value_init95_lookuptableimportv2_table_handle)key_value_init95_lookuptableimportv2_keys+key_value_init95_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^key_value_init95/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :d:d2L
$key_value_init95/LookupTableImportV2$key_value_init95/LookupTableImportV2: 

_output_shapes
:d: 

_output_shapes
:d
?	
?
*__inference_brute_force_layer_call_fn_1749
input_1
unknown
	unknown_0	
	unknown_1:e 
	unknown_2:d 
	unknown_3:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_1734o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
|
(__inference_embedding_layer_call_fn_2017

inputs	
unknown:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1621o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1842
input_1
sequential_1824
sequential_1826	!
sequential_1828:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_1824sequential_1826sequential_1828*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1626t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
__inference__initializer_20395
1key_value_init95_lookuptableimportv2_table_handle-
)key_value_init95_lookuptableimportv2_keys/
+key_value_init95_lookuptableimportv2_values	
identity??$key_value_init95/LookupTableImportV2?
$key_value_init95/LookupTableImportV2LookupTableImportV21key_value_init95_lookuptableimportv2_table_handle)key_value_init95_lookuptableimportv2_keys+key_value_init95_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^key_value_init95/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :d:d2L
$key_value_init95/LookupTableImportV2$key_value_init95/LookupTableImportV2: 

_output_shapes
:d: 

_output_shapes
:d
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1789
queries
sequential_1771
sequential_1773	!
sequential_1775:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_1771sequential_1773sequential_1775*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1667t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1667

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_1663:e 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1663*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1621y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1698
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_1694:e 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1694*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1621y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1709
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_1705:e 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1705*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1621y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1920
queriesG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	<
*sequential_embedding_embedding_lookup_1904:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeriesDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_1904*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/1904*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/1904*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_1687
string_lookup_input
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1667o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
9
__inference__creator_2031
identity??
hash_tablej

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name96*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
)__inference_sequential_layer_call_fn_1984

inputs
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1667o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
*__inference_brute_force_layer_call_fn_1821
input_1
unknown
	unknown_0	
	unknown_1:e 
	unknown_2:d 
	unknown_3:d
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_brute_force_layer_call_and_return_conditional_losses_1789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1943
queriesG
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	<
*sequential_embedding_embedding_lookup_1927:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handlequeriesDsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_1927*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/1927*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/1927*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
__inference__wrapped_model_1601
input_1S
Obrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleT
Pbrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	H
6brute_force_sequential_embedding_embedding_lookup_1585:e <
*brute_force_matmul_readvariableop_resource:d )
brute_force_gather_resource:d
identity

identity_1??brute_force/Gather?!brute_force/MatMul/ReadVariableOp?1brute_force/sequential/embedding/embedding_lookup?Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2?
Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Obrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinput_1Pbrute_force_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
-brute_force/sequential/string_lookup/IdentityIdentityKbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
1brute_force/sequential/embedding/embedding_lookupResourceGather6brute_force_sequential_embedding_embedding_lookup_15856brute_force/sequential/string_lookup/Identity:output:0*
Tindices0	*I
_class?
=;loc:@brute_force/sequential/embedding/embedding_lookup/1585*'
_output_shapes
:????????? *
dtype0?
:brute_force/sequential/embedding/embedding_lookup/IdentityIdentity:brute_force/sequential/embedding/embedding_lookup:output:0*
T0*I
_class?
=;loc:@brute_force/sequential/embedding/embedding_lookup/1585*'
_output_shapes
:????????? ?
<brute_force/sequential/embedding/embedding_lookup/Identity_1IdentityCbrute_force/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
brute_force/MatMulMatMulEbrute_force/sequential/embedding/embedding_lookup/Identity_1:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
?
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*'
_output_shapes
:?????????
j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOp2^brute_force/sequential/embedding/embedding_lookupC^brute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2f
1brute_force/sequential/embedding/embedding_lookup1brute_force/sequential/embedding/embedding_lookup2?
Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2Bbrute_force/sequential/string_lookup/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1626

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	 
embedding_1622:e 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1622*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1621y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_2010

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	1
embedding_embedding_lookup_2004:e 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_2004string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/2004*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/2004*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_2026

inputs	'
embedding_lookup_2020:e 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2020inputs*
Tindices0	*(
_class
loc:@embedding_lookup/2020*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2020*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_1635
string_lookup_input
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1626o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1734
queries
sequential_1716
sequential_1718	!
sequential_1720:e 0
matmul_readvariableop_resource:d 
gather_resource:d

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_1716sequential_1718sequential_1720*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1626t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1997

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	1
embedding_embedding_lookup_1991:e 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_1991string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/1991*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/1991*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
 __inference__traced_restore_2109
file_prefix*
assignvariableop_identifiers:d/
assignvariableop_1_candidates:d 9
'assignvariableop_2_embedding_embeddings:e 

identity_4??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
input_1,
serving_default_input_1:0?????????>
output_12
StatefulPartitionedCall_1:0?????????
>
output_22
StatefulPartitionedCall_1:1?????????
tensorflow/serving/predict:?M
?
query_model
identifiers
_identifiers

candidates
_candidates
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
query_with_exclusions

signatures"
_tf_keras_model
?
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
:d2identifiers
:d 2
candidates
5
0
1
2"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_brute_force_layer_call_fn_1749
*__inference_brute_force_layer_call_fn_1880
*__inference_brute_force_layer_call_fn_1897
*__inference_brute_force_layer_call_fn_1821?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_brute_force_layer_call_and_return_conditional_losses_1920
E__inference_brute_force_layer_call_and_return_conditional_losses_1943
E__inference_brute_force_layer_call_and_return_conditional_losses_1842
E__inference_brute_force_layer_call_and_return_conditional_losses_1863?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_1601input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
serving_default"
signature_map
:
lookup_table
	keras_api"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_sequential_layer_call_fn_1635
)__inference_sequential_layer_call_fn_1973
)__inference_sequential_layer_call_fn_1984
)__inference_sequential_layer_call_fn_1687?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_1997
D__inference_sequential_layer_call_and_return_conditional_losses_2010
D__inference_sequential_layer_call_and_return_conditional_losses_1698
D__inference_sequential_layer_call_and_return_conditional_losses_1709?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
&:$e 2embedding/embeddings
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
"__inference_signature_wrapper_1962input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
)_initializer
*_create_resource
+_initialize
,_destroy_resourceR jCustom.StaticHashTable
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_embedding_layer_call_fn_2017?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_embedding_layer_call_and_return_conditional_losses_2026?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
?2?
__inference__creator_2031?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_2039?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2044?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
	J
Const
J	
Const_1
J	
Const_25
__inference__creator_2031?

? 
? "? 7
__inference__destroyer_2044?

? 
? "? >
__inference__initializer_203934?

? 
? "? ?
__inference__wrapped_model_1601?2,?)
"?
?
input_1?????????
? "c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
E__inference_brute_force_layer_call_and_return_conditional_losses_1842?24?1
*?'
?
input_1?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
E__inference_brute_force_layer_call_and_return_conditional_losses_1863?24?1
*?'
?
input_1?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
E__inference_brute_force_layer_call_and_return_conditional_losses_1920?24?1
*?'
?
queries?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
E__inference_brute_force_layer_call_and_return_conditional_losses_1943?24?1
*?'
?
queries?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
*__inference_brute_force_layer_call_fn_1749|24?1
*?'
?
input_1?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
*__inference_brute_force_layer_call_fn_1821|24?1
*?'
?
input_1?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
*__inference_brute_force_layer_call_fn_1880|24?1
*?'
?
queries?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
*__inference_brute_force_layer_call_fn_1897|24?1
*?'
?
queries?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
C__inference_embedding_layer_call_and_return_conditional_losses_2026W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? v
(__inference_embedding_layer_call_fn_2017J+?(
!?
?
inputs?????????	
? "?????????? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1698n2@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1709n2@?=
6?3
)?&
string_lookup_input?????????
p

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1997a23?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_2010a23?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
)__inference_sequential_layer_call_fn_1635a2@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "?????????? ?
)__inference_sequential_layer_call_fn_1687a2@?=
6?3
)?&
string_lookup_input?????????
p

 
? "?????????? ?
)__inference_sequential_layer_call_fn_1973T23?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
)__inference_sequential_layer_call_fn_1984T23?0
)?&
?
inputs?????????
p

 
? "?????????? ?
"__inference_signature_wrapper_1962?27?4
? 
-?*
(
input_1?
input_1?????????"c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
