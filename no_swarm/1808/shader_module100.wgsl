struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = u_input.c;
    var_0 = u_input.c;
    let var_1 = -2147483647i;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_div_vec2_f32(arg_0.a.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 178f)) + arg_0.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.b.x) * arg_0.b))), ~var_1, u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1253f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(max(677f, -154f)));
    return false;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    var var_0 = u_input.c;
    var_0 = ~_wgslsmith_mult_u32(4294967295u, min(~u_input.c, u_input.c ^ u_input.c));
    var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 0u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(5970u, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 20066u), vec3<u32>(25533u, 4294967295u, 1u))), _wgslsmith_sub_u32(u_input.c << (u_input.c % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, 5612u, 45040u)), 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_1)) * 505f), -665f));
    var_0 = u_input.c;
    return vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, var_1.x) + vec3<f32>(var_1.x, -233f, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-770f, -299f), var_1.xy, vec2<bool>(true, true)))), u_input.a.x, -_wgslsmith_clamp_i32(u_input.d.x, 1i, u_input.d.x)), u_input.d), true, !(any(vec3<bool>(false, false, false)) == true));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: i32) -> bool {
    var var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-925f, _wgslsmith_f_op_f32(floor(609f)), _wgslsmith_f_op_f32(f32(-1f) * -557f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2144f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1414f, arg_2.x)))), ~countOneBits(_wgslsmith_mod_i32(~2147483647i, arg_0.d | u_input.d.x)), -arg_0.d);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, arg_1 | ~(~arg_1)), vec4<u32>(4294967295u & _wgslsmith_sub_u32(arg_1.x, arg_1.x), reverseBits(_wgslsmith_div_u32(u_input.c, arg_1.x)), (0u ^ arg_1.x) & ~0u, ~1u) | select(~arg_1 ^ arg_1, arg_1, vec4<bool>(func_2(arg_0, vec2<i32>(u_input.b, 29819i)), u_input.c >= 0u, func_1(arg_2.x, 347f).x, func_2(Struct_1(arg_0.a, vec2<f32>(arg_0.a.x, var_0.b.x), 0i, arg_3), vec2<i32>(0i, 1i)))));
    let var_3 = Struct_1(var_1.a, arg_0.a.xy, ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.d, u_input.a.xy ^ vec2<i32>(arg_0.d, 4094i)), ~(-60806i)), 0i);
    return all(vec4<bool>(true, true, -1459f != var_0.a.x, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(false, true, true), vec3<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), true), select(vec3<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), func_1(823f, -252f), true), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), func_3(Struct_1(vec3<f32>(-819f, -969f, -1320f), vec2<f32>(269f, 604f), u_input.b, u_input.a.x), vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u), vec2<f32>(190f, -1512f), 65062i)))), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(func_3(Struct_1(vec3<f32>(592f, -2222f, 1081f), vec2<f32>(-894f, -417f), u_input.a.x, u_input.d.x), vec4<u32>(u_input.c, 4294967295u, 49925u, 33019u), vec2<f32>(870f, 1000f), u_input.b), func_2(Struct_1(vec3<f32>(2228f, 1130f, -618f), vec2<f32>(-747f, -1000f), 1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), true, any(vec4<bool>(true, true, true, true)))), 130u > u_input.c, u_input.d.x > _wgslsmith_mult_i32(-57388i, _wgslsmith_add_i32(-4354i, -8862i))));
    let var_1 = vec3<f32>(165f, -774f, _wgslsmith_f_op_f32(select(-2278f, _wgslsmith_f_op_f32(667f * _wgslsmith_f_op_f32(-1f)), all(vec2<bool>(!var_0.x, all(vec3<bool>(var_0.x, false, false)))))));
    var var_2 = !(var_0.x & !var_0.x);
    var_0 = vec3<bool>(any(func_1(173f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(194f)), 248f)))), !any(vec4<bool>(var_0.x, var_0.x, u_input.b < -9699i, var_0.x)), var_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.zy)))))), -u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 26177u, u_input.c << (u_input.c % 32u)), vec4<u32>(max(u_input.c, 67802u), ~40670u, ~1u, u_input.c)) % 32u));
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(u_input.b, u_input.a.x)), u_input.a.zx), -1i), ~(~0i));
    var var_5 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(var_3.a.x)), _wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(f32(-1f) * -705f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(trunc(var_3.a.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -345f)) + var_3.b), firstLeadingBit(1i), var_3.d);
    let var_6 = _wgslsmith_f_op_f32(-var_1.x);
    var var_7 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 232f))), vec4<i32>(~_wgslsmith_add_i32(~30795i, var_3.c), abs(-55292i), var_3.d | ~u_input.d.x, var_5.d), countOneBits(firstLeadingBit(max(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, 50083u))) >> (vec2<u32>(u_input.c, 28037u) % vec2<u32>(32u))));
}

