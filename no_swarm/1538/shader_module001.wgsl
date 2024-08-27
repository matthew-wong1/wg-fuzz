struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: array<u32, 31>;

var<private> global2: i32;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec2<i32>, 17>();
    let var_0 = !(!(-_wgslsmith_add_i32(u_input.d, u_input.d) != -u_input.d));
    global1 = array<u32, 31>();
    let var_1 = false;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global3.a)))), global3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global3.a)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.a, 194f), global3.a)), !var_0 || false))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a))), _wgslsmith_div_f32(global3.a, 1098f), global3.a));
    return u_input.d;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global1 = array<u32, 31>();
    let var_0 = -871f;
    var var_1 = Struct_1(-889f);
    let var_2 = reverseBits(0u) << (u_input.a % 32u);
    let var_3 = vec3<i32>(i32(-1i) * -20483i, -func_3(), u_input.d | -(select(u_input.d, -31389i, false) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 4247i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d))));
    return _wgslsmith_dot_vec4_u32(u_input.e, ~_wgslsmith_add_vec4_u32(select(select(vec4<u32>(35499u, var_2, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 31u)], 31u)], 31u)]), u_input.e, vec4<bool>(arg_0.x, false, arg_0.x, false)), u_input.e, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(vec4<u32>(17679u, u_input.b, 64622u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20013u, 31u)], 31u)], 31u)]), ~u_input.c, !arg_0.x)));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = 0i;
    var var_1 = abs(arg_0.x);
    var var_2 = 31691i;
    var_1 = ~global1[_wgslsmith_index_u32(1u, 31u)];
    let var_3 = vec3<u32>(~(u_input.c.x | func_2(vec2<bool>(false, false))), 55139u, u_input.e.x);
    return _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(188f, global3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 45881u, 4294967295u, u_input.b)))) * 893f), global3.a));
    global2 = -40522i ^ _wgslsmith_add_i32(18074i, -_wgslsmith_sub_i32(-u_input.d, 1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -1000f, global3.a, 121f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, 341f, global3.a, -1236f), vec4<f32>(-610f, global3.a, 591f, var_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -106f, global3.a, 364f) - vec4<f32>(var_1.x, global3.a, global3.a, global3.a)))), vec4<bool>(var_0, false, var_0 | var_0, true)))))));
    let var_3 = Struct_1(var_1.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(900f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.x, -360f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1691f - -658f)))), _wgslsmith_div_f32(-214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-259f)))), global3.a));
    let x = u_input.a;
    s_output = StorageBuffer(-667f, vec3<i32>(_wgslsmith_div_i32(-(u_input.d & 0i), 2147483647i), firstLeadingBit(u_input.d), abs(abs(1i))), u_input.d, vec2<f32>(global3.a, var_2.x), 958f);
}

