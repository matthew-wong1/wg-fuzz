struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: array<i32, 10>;

var<private> global2: vec2<f32> = vec2<f32>(-1403f, 886f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(1453f, 109f), 26061u, vec3<f32>(1110f, 705f, -1034f), 1573f), false);

var<private> global4: array<bool, 2> = array<bool, 2>(false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    global0 = array<vec3<bool>, 27>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, arg_0.a.d)) * global3.a.c.xy) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.a.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 10>();
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global3.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(global3.a, global4[_wgslsmith_index_u32(0u, 2u)]))))))), global3.a.c.yx);
    global4 = array<bool, 2>();
    global0 = array<vec3<bool>, 27>();
    var var_0 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e.x, 51084u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 0u, 4474u), vec3<u32>(global3.a.b, 4294967295u, 30862u), vec3<bool>(global4[_wgslsmith_index_u32(1982u, 2u)], global4[_wgslsmith_index_u32(u_input.a.x, 2u)], true)), u_input.e)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.e), u_input.e)), 10u)], -u_input.d.x, _wgslsmith_mod_i32(25818i, -22031i));
    var var_1 = vec3<u32>(2082u, 0u, 4294967295u | _wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_add_u32(1u | u_input.a.x, u_input.e.x), u_input.a.x | 1u));
    global3 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-991f, 376f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, global3.a.a.x))))), ~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, -227f, _wgslsmith_f_op_f32(-global3.a.a.x))), _wgslsmith_f_op_f32(-1976f - _wgslsmith_f_op_f32(trunc(293f)))), 0u != ~select(22521u, ~1u, all(vec3<bool>(true, true, global3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global3.a.d, global2.x), global1[_wgslsmith_index_u32(25474u, 10u)], var_1.x);
}

