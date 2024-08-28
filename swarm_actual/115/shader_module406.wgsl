struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(-1870f, 1150f, -701f), vec4<u32>(4294967295u, 22114u, 1u, 83195u)), Struct_1(vec3<f32>(212f, -1697f, 861f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 76813u)), Struct_1(vec3<f32>(-461f, 410f, -420f), vec4<u32>(1u, 38471u, 4294967295u, 1u)), Struct_1(vec3<f32>(635f, 647f, -704f), vec4<u32>(4294967295u, 4294967295u, 49502u, 0u)), Struct_1(vec3<f32>(402f, 1000f, 831f), vec4<u32>(54141u, 0u, 37359u, 1u)), Struct_1(vec3<f32>(-1053f, 842f, 182f), vec4<u32>(4294967295u, 105018u, 27855u, 16688u)), Struct_1(vec3<f32>(-122f, 632f, 2404f), vec4<u32>(0u, 0u, 7634u, 24559u)), Struct_1(vec3<f32>(-522f, -901f, 2039f), vec4<u32>(33097u, 0u, 4294967295u, 36311u)), Struct_1(vec3<f32>(-1000f, 622f, 303f), vec4<u32>(0u, 28585u, 32036u, 4294967295u)), Struct_1(vec3<f32>(1960f, -634f, 1724f), vec4<u32>(0u, 0u, 30882u, 0u)), Struct_1(vec3<f32>(-432f, -1318f, -868f), vec4<u32>(8895u, 1u, 0u, 4294967295u)), Struct_1(vec3<f32>(1000f, -121f, 468f), vec4<u32>(1u, 1u, 4294967295u, 63757u)), Struct_1(vec3<f32>(621f, -204f, 1050f), vec4<u32>(83356u, 9301u, 0u, 0u)), Struct_1(vec3<f32>(1558f, -182f, 402f), vec4<u32>(70474u, 9315u, 9519u, 17888u)), Struct_1(vec3<f32>(651f, -749f, -1000f), vec4<u32>(1u, 4294967295u, 1u, 16612u)), Struct_1(vec3<f32>(599f, -205f, 1841f), vec4<u32>(1u, 25685u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-1395f, -503f, 1395f), vec4<u32>(0u, 0u, 36743u, 36260u)), Struct_1(vec3<f32>(-132f, 1000f, -1215f), vec4<u32>(1u, 58093u, 1u, 0u)), Struct_1(vec3<f32>(-766f, -286f, -1000f), vec4<u32>(63967u, 1u, 0u, 18187u)), Struct_1(vec3<f32>(-1129f, -1000f, -319f), vec4<u32>(1132u, 39115u, 61608u, 19941u)), Struct_1(vec3<f32>(-2250f, -972f, 1958f), vec4<u32>(40391u, 4294967295u, 4294967295u, 57081u)), Struct_1(vec3<f32>(116f, -1042f, -1591f), vec4<u32>(77596u, 10950u, 45962u, 57262u)), Struct_1(vec3<f32>(1710f, 719f, -1887f), vec4<u32>(4294967295u, 4294967295u, 0u, 38347u)), Struct_1(vec3<f32>(777f, 173f, 345f), vec4<u32>(0u, 0u, 7148u, 33630u)), Struct_1(vec3<f32>(-416f, 517f, -673f), vec4<u32>(31841u, 4294967295u, 0u, 4294967295u)), Struct_1(vec3<f32>(1000f, -285f, 947f), vec4<u32>(1u, 63461u, 0u, 0u)), Struct_1(vec3<f32>(-666f, -1374f, 357f), vec4<u32>(1u, 7097u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(802f, 496f, -1000f), vec4<u32>(17301u, 4u, 76397u, 4294967295u)), Struct_1(vec3<f32>(-810f, 1915f, 499f), vec4<u32>(102507u, 4294967295u, 1u, 1u)));

var<private> global2: f32 = -666f;

var<private> global3: array<vec4<u32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> f32 {
    global2 = -339f;
    global3 = array<vec4<u32>, 29>();
    global1 = array<Struct_1, 29>();
    global3 = array<vec4<u32>, 29>();
    global1 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(-1f);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = -_wgslsmith_mult_i32(u_input.b, 0i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_2.c.wz);
    var var_2 = all(!(!select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)), vec3<bool>(false, arg_0.x, false), false)));
    let var_3 = arg_2.b.a;
    let var_4 = arg_1.c.xyz;
    return !(!select(select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(true, true, true), !arg_0.x), vec3<bool>(!arg_0.x, true, all(vec4<bool>(false, true, arg_0.x, arg_0.x))), arg_0.x));
}

fn func_1() -> vec2<f32> {
    global1 = array<Struct_1, 29>();
    global2 = _wgslsmith_f_op_f32(func_2());
    var var_0 = vec2<bool>(!(any(vec3<bool>(false, true, false)) & any(vec4<bool>(true, true, true, true))), true);
    var var_1 = _wgslsmith_f_op_f32(959f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f - -638f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2196f, 416f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(310f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-237f * -1607f))))));
    var var_2 = select(!(!(!(!vec3<bool>(true, true, var_0.x)))), select(vec3<bool>(var_0.x, !all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true), func_3(select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x)), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), true), all(vec3<bool>(true, var_0.x, false))), Struct_2(-1i, Struct_1(vec3<f32>(1000f, -497f, -1344f), global3[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(486f, -519f, -344f, 953f), vec4<f32>(778f, 133f, -1000f, -1517f), vec4<bool>(true, var_0.x, var_0.x, true))), firstTrailingBit(u_input.d.zzy)), Struct_2(reverseBits(u_input.b), Struct_1(vec3<f32>(-1190f, -850f, -581f), vec4<u32>(50012u, 25290u, 24872u, u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2158f, 469f, 1059f, 286f) - vec4<f32>(1096f, -589f, -1022f, 135f)), _wgslsmith_add_vec3_u32(vec3<u32>(52342u, 34375u, u_input.c), vec3<u32>(0u, u_input.c, u_input.d.x)))), !select(vec3<bool>(false, true, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(false, var_0.x, var_0.x))), vec3<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x), true || var_0.x)), all(func_3(vec2<bool>(false, false), Struct_2(1i, global1[_wgslsmith_index_u32(11277u, 29u)], vec4<f32>(374f, 1530f, 1612f, -520f), vec3<u32>(u_input.c, 8875u, u_input.d.x)), Struct_2(u_input.a.x, Struct_1(vec3<f32>(984f, -129f, -1000f), vec4<u32>(4294967295u, 0u, u_input.c, 5185u)), vec4<f32>(686f, -682f, -245f, 628f), u_input.d.wwy)).xz) & var_0.x, !(!all(vec3<bool>(true, false, true)))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1364f))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, -1885f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -880f)), _wgslsmith_f_op_f32(func_2())))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-958f, 1382f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f + 451f) - _wgslsmith_f_op_f32(trunc(-1511f)))), 1446f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(963f, 984f) - vec2<f32>(-604f, 382f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, 396f) * vec2<f32>(-688f, -677f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(u_input.c, 29u)], 4294967295u, 176f, vec2<i32>(u_input.a.x, -2147483647i));
}

