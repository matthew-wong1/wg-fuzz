struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, true, false, true, false, true, true, true, true, false, true, false, true, true, true, true, true, false, false, false, true, false, true, true);

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    global0 = array<vec3<i32>, 16>();
    let var_0 = Struct_1(0u);
    let var_1 = global1[_wgslsmith_index_u32(1u, 25u)];
    var var_2 = true;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -541f);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> f32 {
    global0 = array<vec3<i32>, 16>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -247f);
    return 1213f;
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = select(vec3<u32>(_wgslsmith_mod_u32(~1u, 74711u), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xz)), abs(u_input.d)), ~max(vec3<u32>(u_input.d, u_input.c.x, u_input.d), vec3<u32>(5149u, 22213u, 1412u)) ^ vec3<u32>(987u, u_input.d, u_input.d), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(20753u, 25u)], global1[_wgslsmith_index_u32(4272u, 25u)])), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), true), vec3<bool>(all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 25u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(u_input.c.x, 25u)])), true, true), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, u_input.d, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), 25u)]));
    let var_1 = _wgslsmith_div_vec3_u32(var_0, vec3<u32>(_wgslsmith_sub_u32(~u_input.c.x, u_input.c.x), var_0.x, var_0.x));
    let var_2 = Struct_1(~(~38956u));
    global1 = array<bool, 25>();
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, ~(u_input.c ^ var_0)), abs(vec3<u32>(73810u, 28932u, 42121u)));
    return 665f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 25>();
    global2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1f * -1066f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, vec4<u32>(u_input.d, u_input.d, u_input.c.x, 8551u), _wgslsmith_f_op_vec4_f32(vec4<f32>(823f, 1458f, -1000f, 943f) - vec4<f32>(1223f, 1052f, 577f, 1497f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -865f, 319f, -637f) + vec4<f32>(-703f, -325f, 1000f, -327f))))), -918f))));
    var var_0 = max(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)] ^ vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-15010i, u_input.b.x, u_input.e.x, -2147483647i)), -vec4<i32>(60409i, -81606i, u_input.a, u_input.e.x)), u_input.a, -(i32(-1i) * -21856i)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1781f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1416f, -507f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-984f)), 886f, _wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(f32(-1f) * -846f)), _wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(f32(-1f) * -834f)))));
}

