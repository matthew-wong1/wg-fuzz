struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = ~(~(~min(vec2<u32>(u_input.c, 1u), select(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 0u), vec2<bool>(false, true)))));
    var var_1 = Struct_1(select(vec4<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, false)), true), 12650u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1785f)) + _wgslsmith_f_op_f32(max(786f, -469f))), -1294f, 817f, 291f));
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f + -1109f)) < _wgslsmith_f_op_f32(340f - var_1.c.x), !((u_input.b < arg_0) & true), var_1.a.x, var_1.a.x), var_1.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(var_1.c)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2.c);
    var var_4 = u_input.e;
    return (((~vec3<u32>(var_1.b, var_1.b, var_2.b) | ~vec3<u32>(4294967295u, u_input.c, 0u)) ^ abs(~vec3<u32>(var_0.x, 25952u, 4294967295u))) >> ((~(~vec3<u32>(1u, 0u, 64018u)) << (vec3<u32>(44005u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(44469u, u_input.a, var_2.b, 32652u), vec4<u32>(72305u, 69331u, u_input.c, 127735u))) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(28985u, ~max(77626u, _wgslsmith_dot_vec3_u32(vec3<u32>(30111u, 30584u, 2074u), vec3<u32>(1u, var_1.b, var_2.b))), 1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    var var_0 = 26490u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(550f, -500f)) * _wgslsmith_f_op_f32(floor(859f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(456f)), _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(-630f - _wgslsmith_f_op_f32(floor(105f)))))));
    let var_2 = -_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_div_i32(u_input.e.x, u_input.d)) ^ (i32(-1i) * -1i), -2147483647i);
    var var_3 = u_input.e.yz;
    var var_4 = Struct_1(!vec4<bool>(true, true, _wgslsmith_mod_u32(6878u, u_input.c) > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 4294967295u), arg_2), true), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.x, -840f), _wgslsmith_f_op_f32(min(303f, 1050f)), -570f, 1080f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 123f, 580f) * vec4<f32>(415f, var_1.x, 1607f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -225f, 353f) * vec4<f32>(-154f, var_1.x, var_1.x, -998f)), vec4<bool>(true, true, true, true))))));
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(370f, -256f))))) == 356f;
    var var_1 = 1i;
    var var_2 = -(func_4(min(vec2<u32>(4294967295u, u_input.c), max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.c, u_input.c))), _wgslsmith_sub_u32(~u_input.c, max(u_input.a, u_input.c)), ~func_3(u_input.d)) | u_input.e.x);
    var_2 = firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, 1i, _wgslsmith_div_i32(u_input.e.x, u_input.b)));
    var var_3 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(select(~(~1u), 4294967295u, !any(vec4<bool>(false, false, false, false))), u_input.a));
    return Struct_1(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true)), 43860u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1623f, -2078f, -917f, 153f) + vec4<f32>(-668f, -743f, -393f, -205f)))))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2175f * _wgslsmith_f_op_f32(f32(-1f) * -1220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1370f * 1646f) + _wgslsmith_f_op_f32(select(-570f, 1546f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-629f * 465f), -653f), 911f)));
    var_0 = func_2();
    var_0 = Struct_1(var_0.a, ~17706u, _wgslsmith_f_op_vec4_f32(round(var_0.c)));
    let var_1 = ~(-12953i) << (~u_input.a % 32u);
    var_0 = Struct_1(select(vec4<bool>(all(vec4<bool>(var_0.a.x, false, true, var_0.a.x)) & true, select(true, var_0.a.x, true), any(!var_0.a.zyx), true), vec4<bool>(!var_0.a.x, all(vec4<bool>(true, true, false, false)) && true, var_0.a.x, (var_1 & 31722i) < 49861i), true), ~(~u_input.c), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2().c.x, 611f));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2921f, 332f) * _wgslsmith_f_op_f32(round(-1480f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - 373f);
    var var_1 = select(abs(~1u), u_input.a, ~u_input.a >= _wgslsmith_sub_u32(u_input.c, u_input.a));
    var var_2 = !vec3<bool>(any(vec4<bool>(true, func_1(), var_0 < 804f, true)), !(u_input.c <= 4294967295u), true);
    var_2 = !(!vec3<bool>(false, any(func_2().a.wwx), true));
    let var_3 = vec2<bool>(!((~u_input.d == _wgslsmith_div_i32(-16905i, u_input.b)) || var_2.x), all(vec2<bool>(var_2.x, _wgslsmith_div_u32(4294967295u, 30858u) != u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 19983u, u_input.a), vec3<u32>(57327u, 25658u, u_input.a), false), reverseBits(vec3<u32>(u_input.c, 4294967295u, u_input.c))), vec3<u32>(_wgslsmith_div_u32(35208u, 9948u), _wgslsmith_mult_u32(u_input.c, 4294967295u), 1u), true)), ~u_input.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.a, 3589u)), (0u & u_input.c) << (1u % 32u)));
}

