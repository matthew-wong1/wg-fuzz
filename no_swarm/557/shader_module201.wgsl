struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: i32;

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 73651u, 4294967295u, 4780u), vec4<u32>(16229u, 25773u, 1u, 4294967295u), vec4<u32>(49229u, 19141u, 38115u, 10507u), vec4<u32>(9031u, 11898u, 92278u, 40593u), vec4<u32>(1u, 20713u, 30526u, 27595u), vec4<u32>(0u, 22963u, 47641u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(10757u, 4119u, 4294967295u, 4294967295u), vec4<u32>(0u, 45316u, 0u, 4294967295u));

var<private> global4: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(122f, -1026f), vec2<f32>(118f, -321f), vec2<f32>(-534f, -319f), vec2<f32>(-491f, 1584f), vec2<f32>(-214f, 1013f), vec2<f32>(376f, 216f), vec2<f32>(2333f, 2291f), vec2<f32>(-518f, -895f), vec2<f32>(410f, -298f), vec2<f32>(-1000f, -453f), vec2<f32>(102f, 728f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<f32>, 11>();
    let var_0 = true;
    let var_1 = all(select(!vec2<bool>(true, var_0), !vec2<bool>(true, var_0 & var_0), 1222f >= _wgslsmith_f_op_f32(trunc(172f))));
    var var_2 = abs(u_input.c);
    var_2 = global2.x;
    return Struct_1(~(~_wgslsmith_sub_u32(u_input.a.x, 36745u)) >> (~58755u % 32u), vec2<i32>(u_input.b, -2147483647i), var_0);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(min(u_input.d, u_input.a), abs(vec4<u32>(0u, ~global2.x, 0u, 0u))), ~(-(vec2<i32>(-1i, arg_1.b.x) & countOneBits(vec2<i32>(2784i, -21923i)))), true);
    let var_2 = u_input.d.x;
    var var_3 = Struct_2(Struct_1(var_0.a, var_1.b, var_2 <= u_input.d.x), ~4294967295u, 2147483647i, abs(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.a, global2.x), global3[_wgslsmith_index_u32(37381u, 9u)]), 1u), arg_1.a)));
    var var_4 = 811f;
    return func_2().a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    global2 = max(global3[_wgslsmith_index_u32(var_0.a, 9u)], ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7658u, 34005u, global2.x), u_input.d.zzy), func_3(Struct_3(vec4<bool>(var_0.c, var_0.c, true, true), vec3<f32>(171f, 1052f, 1785f), -331f, vec2<bool>(var_0.c, false), 1811f), var_0), var_0.a << (global2.x % 32u), _wgslsmith_clamp_u32(global2.x, u_input.a.x, global2.x)) << (vec4<u32>(var_0.a, _wgslsmith_sub_u32(19133u, ~4294967295u), ~(~global2.x), func_3(Struct_3(vec4<bool>(false, var_0.c, true, var_0.c), vec3<f32>(-528f, 1594f, -413f), -795f, vec2<bool>(false, false), -500f), var_0)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(2182u, ~13141u, global2.x) & select(u_input.a.xzz, vec3<u32>(28104u, 1u, ~u_input.d.x), _wgslsmith_f_op_f32(trunc(1757f)) >= -742f), ~u_input.a.zyz ^ min(vec3<u32>(var_0.a, 4294967295u, 4294967295u) | vec3<u32>(var_0.a, 0u, u_input.a.x), countOneBits(vec3<u32>(1u, 1u, 8291u) & global2.wxx)));
    global1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(min(868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) * _wgslsmith_f_op_f32(-457f - 1310f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1116f)))))));
    return Struct_2(func_2(), var_1.x, u_input.b >> (abs(~4294967295u) % 32u), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.zxy, u_input.d.yyx), u_input.d.yxy), ~(~_wgslsmith_add_u32(global2.x, 6417u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    var var_0 = true;
    let var_1 = 0i;
    let var_2 = arg_1;
    var var_3 = Struct_3(!select(vec4<bool>(arg_0.a.b.x < var_2.a.b.x, true, arg_0.a.c, !var_2.a.c), vec4<bool>(any(vec4<bool>(true, arg_1.a.c, arg_1.a.c, arg_0.a.c)), true, false, all(vec4<bool>(true, var_2.a.c, var_2.a.c, arg_0.a.c))), vec4<bool>(arg_0.a.c, func_2().c, !arg_0.a.c, false)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -615f)), _wgslsmith_f_op_f32(arg_2 - -1849f)), -1000f, !select(!(!vec2<bool>(false, arg_1.a.c)), vec2<bool>(arg_1.a.c, any(vec4<bool>(true, arg_0.a.c, arg_0.a.c, false))), true), _wgslsmith_f_op_f32(sign(400f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_0.d.x, 22u)] * global0[_wgslsmith_index_u32(59414u, 22u)]) + global0[_wgslsmith_index_u32(~10013u, 22u)]);
    return StorageBuffer(4294967295u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), var_3.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-345f, var_4.x)), 986f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(823f)))))));
}

