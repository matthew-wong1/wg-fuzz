struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1503f;

var<private> global1: u32;

var<private> global2: f32 = -902f;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(4294967295u, 5800u, 0u), vec2<f32>(593f, -907f), -2274f, false), Struct_1(vec3<u32>(7597u, 6859u, 4294967295u), vec2<f32>(-407f, 488f), -390f, false), Struct_1(vec3<u32>(28578u, 4294967295u, 17289u), vec2<f32>(697f, -116f), -517f, false), Struct_1(vec3<u32>(0u, 35401u, 1u), vec2<f32>(558f, 599f), 1314f, true), Struct_1(vec3<u32>(1u, 4294967295u, 37129u), vec2<f32>(-553f, -588f), -1000f, false), Struct_1(vec3<u32>(27788u, 44499u, 23566u), vec2<f32>(1927f, 756f), 176f, false), Struct_1(vec3<u32>(29732u, 4294967295u, 1u), vec2<f32>(-249f, -975f), 1000f, false), Struct_1(vec3<u32>(6095u, 4294967295u, 1u), vec2<f32>(317f, -1000f), -182f, true), Struct_1(vec3<u32>(82892u, 1u, 0u), vec2<f32>(-756f, -897f), 181f, false), Struct_1(vec3<u32>(0u, 0u, 6713u), vec2<f32>(-255f, 421f), -516f, true), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<f32>(3407f, 1203f), -930f, false));

var<private> global4: array<u32, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> bool {
    let var_0 = -320f;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1105f, var_0)));
    global3 = array<Struct_1, 11>();
    var var_2 = !any(arg_1);
    let var_3 = !any(arg_1.xy);
    return true | any(vec3<bool>(false, true, true));
}

fn func_3() -> vec2<f32> {
    let var_0 = true;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(1u, 46655u, false), ~abs(~select(4294967295u, u_input.a.x, true)), ~(~u_input.a.x)), 11u)];
    global1 = 0u;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(721f - var_1.b.x), _wgslsmith_div_f32(159f, 459f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-675f * var_1.c), var_1.b.x))))));
    global4 = array<u32, 24>();
    return _wgslsmith_f_op_vec2_f32(min(var_1.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b)))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    global4 = array<u32, 24>();
    var var_0 = Struct_1(u_input.a.wzw, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1210f, 1000f))), arg_1.x, all(select(select(select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, true)), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, true, true)), vec3<bool>(-520f < arg_3.x, any(vec3<bool>(arg_2, arg_2, true)), arg_3.x != arg_3.x), !func_2(vec4<u32>(u_input.a.x, 0u, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x), vec3<bool>(false, true, arg_2)))));
    var var_1 = Struct_1(vec3<u32>(~countOneBits(_wgslsmith_add_u32(u_input.a.x, 1u)), _wgslsmith_div_u32(~firstLeadingBit(37768u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, global4[_wgslsmith_index_u32(var_0.a.x, 24u)]), ~vec2<u32>(var_0.a.x, global4[_wgslsmith_index_u32(var_0.a.x, 24u)]))), 4294967295u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2985f, 1414f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), -1000f)) * -491f), !(arg_3.x < arg_3.x));
    let var_2 = Struct_1(select(~abs(~var_1.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 48277u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(var_0.a.x, 24u)]), vec3<u32>(1u, 4294967295u, var_0.a.x))), vec3<bool>(var_0.d, 2251f != var_0.c, true)), vec2<f32>(-2062f, arg_1.x), _wgslsmith_f_op_vec2_f32(func_3()).x, all(!vec2<bool>(any(vec3<bool>(arg_2, true, var_1.d)), all(vec2<bool>(var_0.d, var_1.d)))));
    let var_3 = arg_0;
    return -1649f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1298f, -1365f, 161f))), u_input.a.x < 8235u, vec4<f32>(_wgslsmith_f_op_f32(-201f - -1000f), _wgslsmith_f_op_f32(-427f * 931f), -156f, -1221f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x);
    let var_0 = Struct_1(~((vec3<u32>(u_input.a.x, 4294967295u, 43609u) ^ ~u_input.a.wwx) << (max(vec3<u32>(u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x), vec3<u32>(8561u, 1u, u_input.a.x)) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(u_input.b | u_input.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1445f, 1724f, 1218f), vec3<f32>(-342f, -665f, -515f), false)), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-771f, 1677f, 175f, -505f))))), -1192f)), _wgslsmith_f_op_f32(func_1(-1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1293f, -542f, 336f))))), true, vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1670f, 1296f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-241f))) + _wgslsmith_f_op_f32(f32(-1f) * -1455f)), true)), all(!vec2<bool>(func_2(u_input.a, vec3<bool>(false, true, false)), false)));
    global4 = array<u32, 24>();
    var var_1 = all(!vec2<bool>(var_0.d, !(u_input.c <= 1i)));
    let var_2 = Struct_1(u_input.a.ywz, _wgslsmith_f_op_vec2_f32(-var_0.b), -1267f, !any(select(vec4<bool>(var_0.d, var_0.d, var_0.d, true), select(vec4<bool>(var_0.d, true, false, var_0.d), vec4<bool>(false, var_0.d, true, true), vec4<bool>(var_0.d, var_0.d, false, var_0.d)), select(vec4<bool>(var_0.d, true, true, var_0.d), vec4<bool>(false, true, true, true), vec4<bool>(var_0.d, var_0.d, false, var_0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

