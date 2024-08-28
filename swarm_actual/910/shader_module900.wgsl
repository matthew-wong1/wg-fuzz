struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 22633i, -1i, -1i);

var<private> global1: vec2<f32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec3<bool> {
    let var_0 = vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, global0.x) >> (~(~4294967295u) % 32u), global0.x, _wgslsmith_sub_i32(countOneBits(firstLeadingBit(u_input.c)), -1i), -2147483647i);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1414f * 728f))), _wgslsmith_f_op_f32(sign(1739f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x - 202f), _wgslsmith_f_op_f32(select(-210f, -161f, true)))), global1.x))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1545f)), global2.x, -2426f, global2.x);
    var var_1 = _wgslsmith_f_op_f32(sign(global2.x));
    return !vec3<bool>(u_input.b.x >= min(0u & u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(29703u, 47040u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 3826u))), arg_0.a, arg_0.a);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    let var_0 = any(vec3<bool>(true, all(vec2<bool>(true, true)) | !any(vec2<bool>(true, true)), false));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(198f)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-arg_0)), any(vec4<bool>(false, false, var_0, true)))) * global1.x));
    var var_3 = any(func_3(Struct_1(var_0), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(711f))));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 83756u, 26245u, 0u) | ~vec4<u32>(4294967295u, 1u, 10368u, var_1.x)), ~vec4<u32>(~4294967295u, arg_1, ~var_1.x, ~arg_2.x)), arg_2.x, arg_2.x);
    return _wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1967f, -1333f)), _wgslsmith_f_op_f32(ceil(global2.x)), var_0 && true)))));
}

fn func_1() -> vec2<f32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(1f * 291f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(680f)))) * global2.x));
    global1 = _wgslsmith_f_op_vec2_f32(-global2.ww);
    global1 = _wgslsmith_f_op_vec2_f32(global2.zw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xw * vec2<f32>(188f, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1196f, global2.x), vec2<f32>(368f, -131f))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(1390f, select(132585u, ~0u, true), ~countOneBits(vec3<u32>(4294967295u, 35663u, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -833f))) > -840f);
    var var_1 = ~min(abs(abs(~global0.wwz)), vec3<i32>(_wgslsmith_clamp_i32(min(-15184i, -4546i), u_input.c >> (4294967295u % 32u), _wgslsmith_add_i32(-2147483647i, global0.x)), u_input.a.x << ((15101u & u_input.b.x) % 32u), _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-1i, 1i))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global1 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = u_input.b.x;
    var var_2 = vec4<u32>(u_input.b.x, abs(_wgslsmith_add_u32(~17437u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 21641u, u_input.b.x, 9515u), vec4<u32>(144993u, 26860u, u_input.b.x, 85400u))) ^ 1u), 3621u | u_input.b.x, ~(~(select(u_input.b.x, 40807u, true) & 26030u)));
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.wz)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.zw)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.x + 1344f), global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~var_2.x);
}

