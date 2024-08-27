struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(320f, -837f, 709f, -1248f, 166f, -1000f, 1000f, -462f, -806f, 1821f, 420f, 330f, -670f, 109f, -2042f, 948f, -1211f, 421f, -779f, 1000f, -1000f, 824f, 226f, -364f, 1027f, 1278f, 1548f, -199f, 1506f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(~1u, 0u, _wgslsmith_mult_u32(arg_0.x, 4294967295u) | 4294967295u), ~(_wgslsmith_mult_vec3_u32(arg_0.www, arg_0.zzy) | reverseBits(arg_0.zyw)));
    var_0 = ~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(0u, 38175u, 1u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.x, 2361u, 0u), arg_0)) ^ 13347u, 0u);
    let var_1 = u_input.b.x;
    var_0 = _wgslsmith_sub_vec3_u32(~arg_0.wyy, ~arg_0.zyw);
    global0 = array<f32, 29>();
    return !(!(!arg_1.x)) || arg_1.x;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = ~vec3<i32>(-((u_input.a.x ^ arg_0) & _wgslsmith_mod_i32(arg_0, 0i)), _wgslsmith_clamp_i32(arg_0, firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(arg_0, -1i) & arg_0), u_input.a.x ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -1i, -15219i, arg_0) >> (vec4<u32>(u_input.b.x, 41977u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))));
    var var_1 = Struct_4(-vec4<i32>(-1848i, select(firstLeadingBit(12354i), -24160i, true), select(~var_0.x, abs(429i), true), _wgslsmith_dot_vec3_i32(var_0 & vec3<i32>(var_0.x, 46772i, var_0.x), vec3<i32>(1i, -289i, -13678i))), u_input.b, Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), any(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)] * 275f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22709u, 29u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 410f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(157f, -370f)))), !all(vec2<bool>(false, false))));
    return -1745f;
}

fn func_2() -> Struct_4 {
    let var_0 = true;
    global0 = array<f32, 29>();
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1226f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)] * 1188f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 29u)] - _wgslsmith_f_op_f32(select(-849f, 1110f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1, 29u)])))))))));
    return Struct_4(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, u_input.a.x), u_input.a.zz)), (_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-2147483647i, u_input.a.x)) >> (_wgslsmith_div_u32(4294967295u, 1u) % 32u)) >> (~_wgslsmith_mult_u32(var_1, var_1) % 32u), _wgslsmith_div_i32(2147483647i, -472i), 1i), ~((u_input.b & vec2<u32>(1u, 1u)) << (vec2<u32>(~u_input.b.x, var_1) % vec2<u32>(32u))), Struct_3(Struct_1(134f), select(!var_0 | !var_0, var_0, true), vec2<f32>(579f, _wgslsmith_f_op_f32(-436f - _wgslsmith_f_op_f32(f32(-1f) * -559f))), all(vec4<bool>(false, false, false, var_0)) & true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(40260u, 29u)], -1104f))), -207f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)])), -1080f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30506u, 29u)])))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, 1000f, -129f, 122f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x) + vec4<f32>(874f, -887f, 586f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1727f, 463f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 727f) + vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(0u, 29u)], var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -634f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], -129f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, var_0.x, -1011f, -173f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global0[_wgslsmith_index_u32(80175u, 29u)], -563f, global0[_wgslsmith_index_u32(11172u, 29u)]), vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], var_0.x, -670f)))))))));
    let var_1 = reverseBits(-2147483647i);
    global0 = array<f32, 29>();
    var var_2 = select(vec2<bool>(func_1((vec4<u32>(u_input.b.x, 72406u, 56368u, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 21804u, u_input.b.x) % vec4<u32>(32u))) & ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 85043u), vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 405f, _wgslsmith_f_op_f32(var_0.x - var_0.x))), false), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), false), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(trunc(1381f)) < _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.b.x, 29u)] <= var_0.x, true), ~u_input.b.x > u_input.b.x));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zyx);
}

