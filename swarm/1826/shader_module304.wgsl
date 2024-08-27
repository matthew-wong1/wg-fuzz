struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, true, false, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 0u;
    global0 = array<bool, 6>();
    let var_1 = arg_0;
    let var_2 = arg_0.b;
    let var_3 = (~var_1.b >> ((~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4862u, u_input.b), vec3<u32>(46813u, u_input.b, 1u)) ^ _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 4294967295u))) % 32u)) > _wgslsmith_mult_i32(74648i, firstLeadingBit(~u_input.a.x & var_2));
    return firstLeadingBit(-vec3<i32>(_wgslsmith_sub_i32(var_2, var_1.b) >> (_wgslsmith_mod_u32(4294967295u, u_input.c.x) % 32u), max(u_input.a.x, var_2) >> (~4905u % 32u), _wgslsmith_mod_i32(arg_0.b, ~var_2)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.wzy), ~(~u_input.a.x));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = _wgslsmith_div_vec3_i32(abs(-select(-vec3<i32>(var_0.b, u_input.a.x, u_input.a.x), ~vec3<i32>(1i, -2147483647i, -5026i), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.zwx))), -2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 289f) + vec3<f32>(arg_0.x, -218f, arg_0.x)))))), 44475i);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, ~max(37119i, -60471i), 1i), abs(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 2147483647i), vec3<i32>(u_input.a.x, 1i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -12702i)))));
    let var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(214f, 1000f, 1033f, 1409f), vec4<f32>(1823f, -568f, -1650f, -326f), false)) - vec4<f32>(367f, 1485f, -2090f, 396f))), vec4<f32>(-449f, _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(ceil(-920f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(1148f * 1060f))))));
    var var_2 = (-max(var_1.b << (0u % 32u), _wgslsmith_mod_i32(var_1.b, u_input.a.x)) <= 663i) && (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1314f))) < var_1.a.x);
    var_2 = false;
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -568f, var_1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(724f, var_1.a.x, -1234f, 405f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -744f), false)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, 3095f, 849f, var_1.a.x), vec4<f32>(var_1.a.x, var_1.a.x, -161f, var_1.a.x)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<bool, 6>();
    var var_1 = u_input.b;
    var var_2 = !(!vec2<bool>(var_0.a.x == _wgslsmith_f_op_f32(sign(774f)), !(!global0[_wgslsmith_index_u32(u_input.b, 6u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(75526i, _wgslsmith_mult_i32(~(-67431i), var_0.b), -1i));
}

