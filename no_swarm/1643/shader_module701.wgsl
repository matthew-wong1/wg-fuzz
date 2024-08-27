struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 6>;

var<private> global2: array<vec3<bool>, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = 5362i << (_wgslsmith_div_u32(~(~(arg_0.x | arg_2.b.x)), firstLeadingBit(~(~u_input.c.x))) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xyx));
    var_1 = arg_1.xyy;
    global0 = true;
    let var_2 = arg_2.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), 768f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1724f, -763f) - -1837f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> f32 {
    global2 = array<vec3<bool>, 8>();
    var var_0 = Struct_3(~(-22580i), arg_1.b, vec2<bool>(all(arg_0.a.xxx), arg_0.a.x), 361f);
    global2 = array<vec3<bool>, 8>();
    var var_1 = arg_2;
    var var_2 = arg_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1227f)), 980f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), global1[_wgslsmith_index_u32(~(u_input.c.x ^ _wgslsmith_clamp_u32(u_input.c.x, 102022u, 22407u)), 6u)]));
}

fn func_2() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(max(u_input.d, abs(_wgslsmith_mod_u32(76484u, 1u))), 6u)], _wgslsmith_f_op_f32(-1394f * 1396f), ~reverseBits(u_input.c.x) <= 31944u)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, true, true, true)), Struct_3(countOneBits(abs(u_input.a)), abs(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 45101u)), vec2<bool>(all(vec2<bool>(true, true)), true), 1331f), u_input.a, u_input.a)), global1[_wgslsmith_index_u32(~(~0u), 6u)], 838f);
    let var_1 = Struct_3(i32(-1i) * -firstLeadingBit(_wgslsmith_add_i32(u_input.a, u_input.b.x)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.c.x, _wgslsmith_mod_u32(63801u, u_input.c.x), max(4294967295u, 31723u)) | select(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.d)), ~vec4<u32>(u_input.c.x, 5198u, 20511u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.d, 0u), vec4<u32>(u_input.c.x, 49811u, 0u, 4294967295u)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(any(vec4<bool>(true, false, false, false)), u_input.a <= u_input.b.x, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, true, true, true)), Struct_3(-u_input.b.x, vec4<u32>(9209u, 48312u, u_input.c.x, 4294967295u) ^ vec4<u32>(u_input.c.x, u_input.c.x, 4180u, 1u), select(vec2<bool>(false, false), vec2<bool>(false, true), true), global1[_wgslsmith_index_u32(u_input.d ^ 4294967295u, 6u)]), ~(~u_input.a), i32(-1i) * -13281i)) + var_0.x));
    global0 = var_1.c.x;
    global2 = array<vec3<bool>, 8>();
    global2 = array<vec3<bool>, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(13125u, 6u)], var_1.d, var_0.x, var_1.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-2340f, -1652f, 958f, global1[_wgslsmith_index_u32(36831u, 6u)])) - var_0)), Struct_3(var_1.a, var_1.b, var_1.c, var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(70666u, 6u)] + global1[_wgslsmith_index_u32(u_input.d, 6u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, 43342u, 4294967295u, u_input.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1386f, -857f, -2001f, global1[_wgslsmith_index_u32(u_input.d, 6u)]), vec4<f32>(719f, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], -614f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1587f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 6u)] - 169f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1152f)), Struct_3(1i, vec4<u32>(u_input.d, 1u, 0u, u_input.d) ^ vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.c.x), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(441f * global1[_wgslsmith_index_u32(u_input.d ^ u_input.c.x, 6u)])))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-281f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-648f - 1008f))))), -1827f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, select(u_input.b, vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) | u_input.a, u_input.a, abs(_wgslsmith_add_i32(u_input.a, -1i))), ~(~u_input.a) <= u_input.b.x));
}

