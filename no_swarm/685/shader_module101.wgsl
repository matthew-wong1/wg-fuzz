struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 688f;

var<private> global1: vec4<f32> = vec4<f32>(-130f, 744f, 521f, -108f);

var<private> global2: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    global0 = arg_1.x;
    let var_0 = global2.b.c.a.wz;
    var var_1 = Struct_2(vec2<bool>(global2.b.a.x, !any(vec2<bool>(global2.b.b, false))), false, global2.b.c);
    let var_2 = -1i;
    var var_3 = -u_input.d.xy;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(ceil(-1209f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1391f)));
    let var_1 = _wgslsmith_clamp_u32(~1u ^ reverseBits(u_input.a), ~global2.a, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, global2.a), firstTrailingBit(_wgslsmith_sub_u32(~4691u, global2.a))));
    let var_2 = Struct_2(select(!vec2<bool>(global1.x > 1483f, true), select(!arg_1.a, global2.b.a, select(!global2.b.a, vec2<bool>(true, true), true)), !(!global2.b.a)), !(!(arg_1.c.a.x <= -1058f)) != !arg_0, global2.b.c);
    var var_3 = _wgslsmith_div_vec2_f32(var_2.c.a.yz, vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.a.x)), _wgslsmith_div_f32(875f, _wgslsmith_div_f32(var_2.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -524f)))));
    let var_4 = var_2;
    return _wgslsmith_f_op_vec2_f32(step(var_2.c.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.c.a.zz - vec2<f32>(var_3.x, 667f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, global2.b.c.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(max(global2.b.c.a.x, global2.b.c.a.x)), var_2.c.a.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(652f, _wgslsmith_f_op_f32(exp2(global1.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1118f, 182f), _wgslsmith_f_op_vec2_f32(func_3(any(!vec3<bool>(global2.b.a.x, true, false)), Struct_2(select(vec2<bool>(global2.b.a.x, true), vec2<bool>(global2.b.b, true), vec2<bool>(global2.b.b, false)), true, global2.b.c)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.a.x, -844f)), -390f, -805f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.a.x)), 2736f)))));
    global2 = Struct_3(4294967295u, Struct_2(select(global2.b.a, global2.b.a, global2.b.a), global2.b.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-443f, global1.x, 1000f, -693f), vec4<f32>(1142f, -1751f, global1.x, 1000f), false)), _wgslsmith_f_op_vec4_f32(global2.b.c.a * vec4<f32>(455f, global1.x, -937f, global2.b.c.a.x)), false)))));
    let var_1 = -152f;
    global1 = arg_1.a;
    return _wgslsmith_f_op_f32(-global2.b.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = true;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - -791f), global2.b.c.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_u32(vec3<u32>(global2.a, u_input.a, 56890u), vec3<u32>(4294967295u, 5753u, 24564u)), Struct_1(vec4<f32>(global2.b.c.a.x, -209f, 2713f, global1.x))))))));
    var_0 = global2.b.a.x;
    var var_1 = Struct_3(_wgslsmith_add_u32(u_input.c | 1u, global2.a), Struct_2(vec2<bool>(all(!vec2<bool>(global2.b.b, global2.b.a.x)), true), !(true && any(vec4<bool>(false, false, global2.b.a.x, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, global2.b.c.a.x, 989f, global2.b.c.a.x) - global2.b.c.a)))));
    let var_2 = min(-(~((-14887i << (u_input.c % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, global2.a, 74181u, u_input.c), vec4<u32>(0u, 2148u, u_input.a, global2.a)) % 32u))), u_input.b);
    var var_3 = Struct_3(~var_1.a, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17781u, u_input.c), vec3<u32>(u_input.a, u_input.a, u_input.a)), 1u, false), ~var_1.a, ~global2.a), firstLeadingBit(vec4<u32>(0u, 33341u, ~1u, var_1.a | 4696u))));
}

