struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-667f * -1186f), _wgslsmith_f_op_f32(floor(1357f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1249f) + _wgslsmith_div_f32(725f, -1423f))))));
    let var_1 = Struct_1(!all(vec3<bool>(any(vec3<bool>(true, true, false)), true, true)));
    var var_2 = u_input.c.xx;
    global0 = ~(~u_input.b);
    global0 = ~(~1u);
    return var_1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, -288f) + vec2<f32>(-263f, 1529f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-808f, -550f), _wgslsmith_f_op_f32(trunc(132f))), vec2<f32>(_wgslsmith_f_op_f32(-1260f * -146f), _wgslsmith_f_op_f32(min(911f, 1000f))))));
    let var_1 = var_0.x;
    let var_2 = arg_1;
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(860f, var_1, -1706f)))))), vec3<f32>(1f, _wgslsmith_f_op_f32(-var_1), var_0.x)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1, -1763f))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_2)), 179f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(arg_2 * -635f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -438f)) + _wgslsmith_f_op_f32(func_4(!vec3<bool>(arg_3, arg_3, false), func_3(u_input.c.x, 1i))))), _wgslsmith_mod_u32(~u_input.b, firstLeadingBit(~_wgslsmith_mult_u32(u_input.b, u_input.b))), _wgslsmith_add_vec2_u32(vec2<u32>(~1u, u_input.b >> (u_input.b % 32u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(45018u, 1114u), ~vec2<u32>(u_input.b, 36372u), abs(vec2<u32>(4294967295u, 32440u))), ~abs(vec2<u32>(27676u, u_input.b))));
    let var_1 = !(!(!arg_3));
    var var_2 = Struct_1(true);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 783f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -650f, 2066f) * var_0.a), vec3<f32>(arg_1.x, 921f, arg_2))))) * var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1526f))) + _wgslsmith_f_op_f32(abs(-604f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1991f - arg_2))) * _wgslsmith_f_op_f32(min(arg_1.x, arg_2))))), u_input.b, vec2<u32>(0u, u_input.b));
    global0 = ~firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.d.x, 97426u) ^ vec3<u32>(4294967295u, var_3.d.x, 4294967295u), reverseBits(vec3<u32>(4294967295u, 1u, 20024u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.d.x, var_3.d.x), var_3.c)));
    return -567f;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !vec2<bool>(arg_1 <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_3(u_input.a & u_input.c.x, 2147483647i) & arg_2.a);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, 269f, -853f)))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), arg_1, _wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_f32(ceil(-1311f)), 1u, countOneBits(~vec2<u32>(57284u, u_input.b) << ((abs(vec2<u32>(42550u, 3503u)) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(var_0.x, var_0.x, false), any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -260f) + var_1.a.x), var_1.a.x))), -767f, 4294967295u, var_1.d);
    var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(274f, _wgslsmith_div_f32(var_1.a.x, 726f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.a, u_input.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a.zy)), vec2<f32>(var_2.b, 199f)), -1273f, true)), var_2.a.x), arg_1, arg_0, var_2.d);
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(vec3<bool>(var_0.x, true, true), arg_2.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -920f))), 1266f)), _wgslsmith_f_op_f32(f32(-1f) * -1510f), countOneBits(arg_0), ~firstLeadingBit(~firstLeadingBit(var_1.d)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_1.a.x + 1300f), var_1.b))), _wgslsmith_f_op_f32(func_4(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_2.a, arg_2.a), var_0.x), vec3<bool>(false, false, arg_2.a), arg_2.a && arg_2.a), vec3<bool>(1i <= u_input.a, func_3(u_input.d.x, u_input.a), true), any(select(vec3<bool>(false, arg_2.a, var_0.x), vec3<bool>(arg_2.a, var_0.x, false), vec3<bool>(var_0.x, false, false)))), _wgslsmith_f_op_f32(-1816f * _wgslsmith_f_op_f32(var_1.b * arg_1)) <= -724f)), max(0u, _wgslsmith_sub_u32(1u, var_1.c)), var_2.d);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = u_input.b;
    var var_0 = arg_0;
    let var_1 = func_5(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-794f, 381f)), _wgslsmith_f_op_f32(1098f + 848f), select(arg_0.a, arg_0.a, arg_0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_div_f32(1040f, 501f))) - -962f), arg_0);
    let var_2 = -6065i;
    var_0 = Struct_1(!any(vec4<bool>(false, arg_0.a, var_0.a, arg_0.a)));
    return Struct_1(true);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = countOneBits(~reverseBits(vec2<u32>(~u_input.b, reverseBits(u_input.b))));
    var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(90911u, ~var_0.x), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, u_input.b), true) << ((vec2<u32>(var_0.x, var_0.x) & vec2<u32>(0u, var_0.x)) % vec2<u32>(32u)), abs(func_5(12932u, -1085f, arg_1).d), countOneBits(vec2<u32>(47418u, var_0.x) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), ~firstLeadingBit(vec2<u32>(1u, u_input.b)));
    global0 = ~((~(~47967u) & func_5(34328u << (1u % 32u), -1760f, func_1(Struct_1(arg_1.a), 67054u)).c) << (_wgslsmith_add_u32(1u, max(1u, _wgslsmith_sub_u32(53421u, 1u))) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1295f, -1110f, 240f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-250f, -1654f, -572f))), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), false))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(47256u & ~var_0.x, ~(var_0.x << (0u % 32u)), u_input.b)), ~(~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b), vec2<bool>(arg_1.a, true)), vec2<u32>(42729u, 4294967295u))));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.d.x), vec2<u32>(35986u, min(8777u, countOneBits(1u))));
    return vec3<u32>(103964u, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(4294967295u, 58210u), ~var_1.c | select(~u_input.b, 87442u, !arg_1.a), ((var_1.d.x << (26163u % 32u)) & firstLeadingBit(u_input.b)) >> ((reverseBits(var_0.x) | 1u) % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_1.c), vec3<u32>(0u, 1u, 0u)), u_input.b)), abs(~max(var_1.d, vec2<u32>(97241u, 3689u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(776f, _wgslsmith_f_op_f32(-239f + 919f)))), 911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1271f)))), 1661f)));
    let var_1 = _wgslsmith_f_op_f32(522f + -2031f);
    let var_2 = i32(-1i) * -1i;
    global0 = _wgslsmith_dot_vec3_u32(abs(func_6(var_2 << (abs(u_input.b) % 32u), func_1(Struct_1(true), ~u_input.b))), vec3<u32>(firstTrailingBit(u_input.b), ~u_input.b, 1u));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(var_0.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 718f), vec2<f32>(var_0.x, var_1))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_6(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, var_2, 0i, u_input.a), abs(u_input.c)), func_1(func_1(Struct_1(true), 25081u), 1u)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(72552u, 33086u), min(vec2<u32>(54954u, 38480u), vec2<u32>(u_input.b, u_input.b))) | 1u), _wgslsmith_div_u32(4294967295u, abs(u_input.b << (~u_input.b % 32u))), vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, -(~u_input.a)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 3307u), vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(58918u, 67632u) & vec2<u32>(4294967295u, u_input.b)))));
}

