struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: array<bool, 6>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, vec4<bool>(true, false, false, true), -666f, 80947u, vec4<bool>(false, false, true, true)), Struct_1(-17484i, vec4<bool>(false, true, false, true), -775f, 11664u, vec4<bool>(true, false, false, false)), Struct_1(-6532i, vec4<bool>(true, true, false, true), -669f, 0u, vec4<bool>(false, true, false, false)), Struct_1(81777i, vec4<bool>(false, false, false, true), 172f, 4294967295u, vec4<bool>(false, true, true, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(267f, -1215f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1599f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1287f)))))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-751f, -2114f)) - 349f), _wgslsmith_f_op_f32(sign(200f))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 1517f, 706f)), vec3<f32>(207f, -979f, 399f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, 1001f, 1868f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-795f, -568f, -1505f), vec3<f32>(264f, 698f, -523f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, 945f, -839f))), vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], false)), func_3(), global0[_wgslsmith_index_u32(u_input.b ^ u_input.b, 6u)]))))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(220f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 882f))), _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), -1159f, var_0.x)));
    global1 = array<Struct_1, 4>();
    let var_1 = 0u;
    global0 = array<bool, 6>();
    return select(vec4<bool>(all(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, true), vec3<bool>(false, true, false), false)), !global0[_wgslsmith_index_u32(~select(76452u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)], !select(true, true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 6u)]))), select(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32((var_1 >> (u_input.b % 32u)) << ((u_input.b >> (29855u % 32u)) % 32u), 6u)], false)), select(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 6u)], false, false))), select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], true, true)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(8245u, 6u)], global0[_wgslsmith_index_u32(11594u, 6u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(53299u, 6u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(3005u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], false)), !global0[_wgslsmith_index_u32(~1u, 6u)]), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(94654u, 6u)], global0[_wgslsmith_index_u32(48219u, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(6008u, 6u)], true, false)))), func_3());
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(~4132i, 16787i), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1115f, 1591f), -2001f)))), u_input.b, !vec4<bool>(func_3(), arg_1.e.x, arg_1.e.x, !(arg_1.c > -958f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(9344u, var_0.d), 4u)];
    let var_2 = vec2<i32>(reverseBits(48502i), u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, 337f, var_0.c) + vec4<f32>(-1174f, 1223f, arg_1.c, var_0.c))))))));
    var var_4 = vec3<i32>(countOneBits(_wgslsmith_clamp_i32(-var_1.a, 0i, -(~(-2147483647i)))), -62674i, -18113i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(844f - _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(-var_1.c));
}

fn func_4(arg_0: f32) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.wx), !func_2(), -2374f, u_input.b, func_2());
    global0 = array<bool, 6>();
    let var_1 = !var_0.b.xy;
    let var_2 = -699f;
    global1 = array<Struct_1, 4>();
    return StorageBuffer(~(~countOneBits(vec3<u32>(898u, 4294967295u, var_0.d))) ^ vec3<u32>(var_0.d, select(0u, u_input.b, global0[_wgslsmith_index_u32(64315u, 6u)]), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, global1[_wgslsmith_index_u32(u_input.b, 4u)]))))) + _wgslsmith_f_op_f32(-1395f - _wgslsmith_f_op_f32(f32(-1f) * -811f))));
}

