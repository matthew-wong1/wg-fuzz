struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(397f, vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec2<bool>(true, false), vec2<f32>(1234f, 1000f)), Struct_2(937f, vec2<i32>(9126i, 0i), false, vec2<bool>(false, false), vec2<f32>(1319f, 1023f)), Struct_2(-1591f, vec2<i32>(-31618i, -1i), false, vec2<bool>(true, false), vec2<f32>(2117f, 2479f)), Struct_2(-164f, vec2<i32>(i32(-2147483648), 11251i), true, vec2<bool>(true, true), vec2<f32>(-1828f, -154f)), Struct_2(962f, vec2<i32>(983i, -1i), false, vec2<bool>(true, false), vec2<f32>(-2182f, 3690f)), Struct_2(1012f, vec2<i32>(2147483647i, -53232i), true, vec2<bool>(true, true), vec2<f32>(679f, -1000f)), Struct_2(-833f, vec2<i32>(-11780i, 224i), false, vec2<bool>(true, false), vec2<f32>(-471f, 1115f)), Struct_2(322f, vec2<i32>(8345i, 55145i), true, vec2<bool>(false, true), vec2<f32>(-354f, -643f)), Struct_2(-268f, vec2<i32>(2147483647i, -8657i), true, vec2<bool>(true, true), vec2<f32>(-723f, 1099f)), Struct_2(-1437f, vec2<i32>(-7674i, 2147483647i), true, vec2<bool>(true, true), vec2<f32>(3192f, -481f)), Struct_2(1113f, vec2<i32>(30074i, 2147483647i), false, vec2<bool>(false, false), vec2<f32>(-352f, -482f)), Struct_2(-1925f, vec2<i32>(0i, -6339i), true, vec2<bool>(false, false), vec2<f32>(-1581f, -1304f)), Struct_2(-773f, vec2<i32>(-1i, 0i), true, vec2<bool>(false, false), vec2<f32>(494f, 1873f)), Struct_2(868f, vec2<i32>(-1i, 0i), false, vec2<bool>(false, false), vec2<f32>(-237f, -1238f)), Struct_2(-1000f, vec2<i32>(1984i, 1i), true, vec2<bool>(false, true), vec2<f32>(412f, 123f)), Struct_2(-383f, vec2<i32>(0i, 2147483647i), true, vec2<bool>(false, true), vec2<f32>(-107f, 682f)), Struct_2(1482f, vec2<i32>(-1i, i32(-2147483648)), false, vec2<bool>(true, false), vec2<f32>(-435f, 202f)), Struct_2(1000f, vec2<i32>(44904i, 9659i), false, vec2<bool>(true, true), vec2<f32>(571f, 1932f)), Struct_2(375f, vec2<i32>(1i, 1i), false, vec2<bool>(true, false), vec2<f32>(1269f, -1232f)), Struct_2(1273f, vec2<i32>(-24598i, 0i), false, vec2<bool>(true, true), vec2<f32>(670f, -743f)), Struct_2(-1888f, vec2<i32>(2147483647i, -3900i), false, vec2<bool>(true, false), vec2<f32>(-101f, -548f)), Struct_2(1000f, vec2<i32>(8649i, i32(-2147483648)), true, vec2<bool>(false, false), vec2<f32>(715f, 362f)), Struct_2(512f, vec2<i32>(-21627i, 6793i), true, vec2<bool>(false, true), vec2<f32>(283f, -761f)), Struct_2(463f, vec2<i32>(4950i, 24467i), true, vec2<bool>(false, true), vec2<f32>(227f, 292f)), Struct_2(1055f, vec2<i32>(0i, 0i), true, vec2<bool>(false, true), vec2<f32>(899f, -2431f)), Struct_2(-270f, vec2<i32>(21831i, 14288i), false, vec2<bool>(false, true), vec2<f32>(1458f, 347f)), Struct_2(1669f, vec2<i32>(-23900i, 43482i), false, vec2<bool>(false, true), vec2<f32>(545f, 318f)));

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = Struct_3(vec4<i32>(u_input.c.x, ~(-arg_3.b.x), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(21194i, -2147483647i, 1i), vec3<i32>(-9205i, u_input.c.x, -4744i), global1.e.yzy), global1.a.xwx), -13214i), arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(439f + -1687f), arg_1.a), vec2<f32>(-929f, -1054f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(-arg_2)))), arg_3.d.x, !vec4<bool>(global1.b.c, true, true, all(select(vec2<bool>(false, true), vec2<bool>(arg_3.d.x, false), vec2<bool>(false, global1.b.c)))));
    global1 = var_1;
    var var_2 = -6135i;
    var var_3 = any(select(global1.e, vec4<bool>(!var_1.e.x, ~u_input.a.x < max(var_0, var_0), var_1.d, var_1.b.d.x), false));
    return !(!vec4<bool>(!arg_0, !arg_0, ~4294967295u > ~var_0, true));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_3 {
    global1 = Struct_3(vec4<i32>(40951i, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global1.a.zzy, vec3<i32>(13510i, u_input.c.x, arg_2)), 2147483647i)), -66907i, min(-1i, 19282i)), global1.b, global1.c, all(!global1.e.xyx), vec4<bool>(global1.b.d.x, global1.e.x, !all(func_3(true, Struct_1(-481f), arg_1, Struct_2(global1.c.x, global1.a.xx, global1.e.x, vec2<bool>(global1.d, false), vec2<f32>(global1.c.x, global1.c.x)))), false));
    global1 = Struct_3(vec4<i32>(~u_input.c.x, min(_wgslsmith_add_i32(u_input.c.x ^ u_input.c.x, _wgslsmith_div_i32(-36844i, arg_2)), 32946i), 0i, -2147483647i), global0[_wgslsmith_index_u32(max(arg_0, arg_0), 27u)], _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1323f * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(827f, global1.c.x))))), global1.b.d.x, !select(vec4<bool>(false, all(global1.b.d), global1.d, global1.b.d.x), global1.e, _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(f32(-1f) * -876f)));
    let var_0 = arg_1;
    let var_1 = Struct_3(u_input.c, global0[_wgslsmith_index_u32(42253u, 27u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(1073f, _wgslsmith_f_op_f32(sign(var_0))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1124f, -1552f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, global1.c.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, 156f), vec2<f32>(-421f, arg_1))))), false, !global1.e);
    return Struct_3(-_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(var_1.a, var_1.a), ~(u_input.c | vec4<i32>(u_input.c.x, -58362i, -27223i, var_1.b.b.x))), Struct_2(_wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(round(global1.b.a))), select(countOneBits(firstLeadingBit(vec2<i32>(-29206i, global1.a.x))), vec2<i32>(firstTrailingBit(13197i), arg_2 | var_1.a.x), true), global1.d, global1.e.zy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.b.e + vec2<f32>(var_1.b.e.x, var_1.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(728f)), _wgslsmith_f_op_f32(floor(global1.c.x))))), global1.d, !vec4<bool>(true, all(!var_1.e.wxx), false, _wgslsmith_f_op_f32(select(arg_1, global1.c.x, var_1.e.x)) >= _wgslsmith_div_f32(arg_1, 478f)));
}

fn func_1() -> f32 {
    let var_0 = func_2(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(-global1.b.e.x))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.x, -6290i), vec2<i32>(40930i, -444i) | u_input.c.xw), -_wgslsmith_mod_vec2_i32(~global1.a.zx, abs(global1.b.b))), -5015i);
    var var_1 = -select(-1i, var_0.b.b.x, !func_2(4294967295u, 243f, global1.b.b.x, 2147483647i).e.x) & 22970i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a - -1381f)) * global1.c.x))));
    var var_3 = -vec4<i32>(firstLeadingBit(firstLeadingBit(32900i)), select(~u_input.c.x, global1.b.b.x, (global1.b.b.x ^ -1i) > (0i | global1.b.b.x)), _wgslsmith_mult_i32(1i | var_0.a.x, global1.b.b.x), _wgslsmith_add_i32(-1i, firstTrailingBit(~2147483647i)));
    global1 = Struct_3(vec4<i32>(firstLeadingBit(i32(-1i) * -var_3.x), global1.a.x, 0i, -38617i), Struct_2(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-var_0.b.a)), select(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.c.x, 0i), var_3.yw), _wgslsmith_sub_vec2_i32(var_3.wy, global1.a.zz)), abs(var_0.b.b), all(!var_0.e)), true, select(global1.e.zw, select(!global1.b.d, func_3(global1.e.x, Struct_1(var_2.a), 118f, global1.b).zw, !var_0.b.d), select(vec2<bool>(true, global1.e.x), select(var_0.e.yy, var_0.e.yz, vec2<bool>(false, global1.e.x)), any(var_0.e.wz))), vec2<f32>(func_2(1u, -194f, -2528i, u_input.c.x).b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.a)) + _wgslsmith_f_op_f32(max(var_0.b.a, var_2.a))))), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(var_0.b.e.x + _wgslsmith_f_op_f32(-var_0.c.x))), true, vec4<bool>(true | any(vec2<bool>(var_0.b.d.x, true)), all(vec2<bool>(select(true, global1.b.d.x, true), 1000f > global1.b.e.x)), true, false));
    return global1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_2(var_0, vec2<i32>(global1.b.b.x, ~u_input.c.x), global1.d, global1.e.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(400f, var_0)));
    var var_2 = Struct_2(540f, ~min(select(countOneBits(global1.b.b), min(global1.a.zy, vec2<i32>(global1.b.b.x, u_input.c.x)), vec2<bool>(global1.d, global1.d)), func_2(~46917u, _wgslsmith_f_op_f32(trunc(893f)), _wgslsmith_mult_i32(1i, var_1.b.x), u_input.c.x).b.b), false, vec2<bool>(!(!var_1.c), any(var_1.d)), global1.c);
    var var_3 = global1.d;
    let var_4 = vec3<bool>(var_2.c, global1.e.x, var_1.d.x);
    var var_5 = func_2(~0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.a + var_2.e.x))))))), -25768i, ~_wgslsmith_dot_vec3_i32(u_input.c.xyz, _wgslsmith_mod_vec3_i32(~u_input.c.yzz, -vec3<i32>(18354i, 0i, global1.b.b.x))));
    global1 = Struct_3(var_5.a, global1.b, var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a)) + -1753f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.e.x - _wgslsmith_f_op_f32(abs(-1701f)))), global1.e);
    let var_6 = ~var_5.a.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(select(u_input.a.zyw, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 0u), vec3<u32>(65359u, u_input.b.x, u_input.a.x))), var_5.e.wzx), ~(~select(vec3<u32>(u_input.a.x, 36554u, 0u), u_input.a.xyz, true))));
}

