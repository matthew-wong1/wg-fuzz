struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(2147483647i, 0i, 3280i), vec3<i32>(1i, -6419i, -21224i), vec3<i32>(13855i, -37909i, 4833i), vec3<i32>(1i, 2147483647i, -1235i), vec3<i32>(1i, 25413i, 0i), vec3<i32>(-55529i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 1i, -19458i), vec3<i32>(5504i, -1i, -2402i), vec3<i32>(43807i, -32486i, i32(-2147483648)), vec3<i32>(1i, 0i, 26190i), vec3<i32>(50881i, 45293i, -48278i), vec3<i32>(i32(-2147483648), 21385i, i32(-2147483648)));

var<private> global1: array<i32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    let var_0 = 23249i;
    let var_1 = !(!(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, false)))));
    let var_2 = Struct_1(2147483647i, false, u_input.d.zz << (vec2<u32>(countOneBits(u_input.b) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(31577u, u_input.c.x), vec2<u32>(102996u, u_input.c.x)), select(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(66027u, u_input.b, u_input.b)), ~u_input.c.x, true)) % vec2<u32>(32u)), u_input.c.xz);
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_u32(u_input.b, ~u_input.c.x) | ~_wgslsmith_mult_u32(u_input.c.x, var_2.d.x)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], global1[_wgslsmith_index_u32(var_2.d.x, 1u)], 1i, var_0), select(vec4<i32>(var_0, 24158i, 0i, var_0), vec4<i32>(u_input.a, 0i, 1i, 2147483647i), false))), ~(vec4<i32>(-31488i, 1i, -29577i, -4227i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, var_2.c.x, -10501i), vec4<i32>(1i, var_2.a, -47649i, var_2.a), vec4<i32>(11218i, 1i, u_input.a, 30828i))) & -_wgslsmith_mod_vec4_i32(-vec4<i32>(-10456i, global1[_wgslsmith_index_u32(var_2.d.x, 1u)], -18579i, -18312i), vec4<i32>(-29924i, 1i, 5853i, var_0)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1019f, -927f))))))), vec4<f32>(_wgslsmith_f_op_f32(244f - 430f), 2014f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-348f * 707f), -1467f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(min(-1000f, 284f)), !var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(346f, _wgslsmith_f_op_f32(-503f * -1210f), all(var_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_div_f32(-1284f, 1656f))), all(var_1)))));
}

