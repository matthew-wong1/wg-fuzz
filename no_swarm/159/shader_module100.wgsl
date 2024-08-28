struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1006f, -426f), vec2<f32>(-1264f, 984f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-550f, -1781f), vec2<f32>(-1000f, 456f))))), !(!any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_mod_i32(~1i, -46925i);
    var_1 = u_input.c;
    let var_2 = Struct_1(~_wgslsmith_clamp_u32(max(15317u, arg_0.x), arg_0.x, (arg_0.x ^ 0u) >> (arg_0.x % 32u)));
    var_1 = 13949i;
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: f32) -> vec3<f32> {
    var var_0 = vec3<i32>(u_input.c, _wgslsmith_mod_i32(2393i, u_input.a >> ((20145u ^ arg_0.x) % 32u)), ~_wgslsmith_mod_i32(0i, -_wgslsmith_div_i32(2147483647i, u_input.b)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, arg_3) + arg_2))), select(any(vec2<bool>(false, true)), true, false)), true);
    var var_2 = Struct_1(_wgslsmith_add_u32(0u, 1u));
    var_2 = Struct_1(_wgslsmith_add_u32(select(abs(0u), _wgslsmith_div_u32(~var_2.a, ~arg_1.x), var_1.a.b), 1u));
    let var_3 = ~arg_1.x | 10939u;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, -219f, 814f) + vec3<f32>(-640f, 1219f, var_1.a.a.x))))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(_wgslsmith_clamp_u32(1u, 27949u, 4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8581u), vec2<u32>(1u, 32135u)) % 32u), ~1u), func_3(vec2<u32>(1u, 1u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1864f)) - _wgslsmith_f_op_f32(floor(1620f))), 530f), _wgslsmith_f_op_f32(-1000f + 498f))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(625f))), 525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1651f * 1123f))), -809f)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0))), _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 330f, var_0.x), var_0, vec3<bool>(false, false, true))))))));
    let var_2 = _wgslsmith_f_op_f32(-1640f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -1190f))))));
    let var_3 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23685u, 4294967295u), var_1.zy, var_0.x)).x))), true), false);
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, -171f, var_0.x))) - var_0), firstTrailingBit(countOneBits(vec2<u32>(13015u, countOneBits(22411u)))), !vec4<bool>(true, var_3.a.b, false, !all(vec2<bool>(var_3.a.b, var_3.a.b))));
    return _wgslsmith_div_vec2_f32(var_1.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(256f, var_2) * _wgslsmith_div_vec2_f32(var_4.a.zz, vec2<f32>(var_2, 719f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_2 + var_1.x))) - _wgslsmith_f_op_vec2_f32(-var_3.a.a)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(arg_0, -6856i, u_input.c))) - _wgslsmith_div_vec2_f32(vec2<f32>(-823f, -1483f), vec2<f32>(-2027f, 439f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-221f, 341f)), -889f) - vec2<f32>(_wgslsmith_div_f32(-445f, -719f), _wgslsmith_f_op_f32(-390f - -1472f)))));
    return u_input.b;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.a.x, 122f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-735f)), arg_2.a.a.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(67154i, arg_1, -22672i)))))), arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-789f - 610f), 1f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-190f, 491f)), _wgslsmith_f_op_f32(1166f + -695f)))));
    var_0 = -792f;
    var var_1 = func_5(Struct_1(0u), select(-(~func_1(2147483647i)), -u_input.a, false), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1743f, -121f), vec2<f32>(472f, -1853f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(465f, -1485f)))), true), all(vec3<bool>(any(vec3<bool>(false, true, true)), true, true))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)));
    var var_2 = func_5(Struct_1(func_3(vec2<u32>(~0u, 64798u)).x), 4915i, Struct_3(func_5(Struct_1(~4294967295u), u_input.a, Struct_3(Struct_2(var_1.a, var_1.b), true), vec3<bool>(false, true, !var_1.b)), true), !select(!select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b)), !(!vec3<bool>(var_1.b, false, false)), !(!vec3<bool>(false, var_1.b, false))));
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(54083u, 11767u, 70848u, 53997u)), ~vec4<u32>(4294967295u, 26083u, 26189u, 44774u), select(var_2.b, var_2.b, var_2.b)) & select(~vec4<u32>(29991u, 1u, 33388u, 54078u), ~vec4<u32>(838u, 8235u, 4294967295u, 55182u), select(vec4<bool>(var_1.b, var_1.b, true, true), vec4<bool>(var_1.b, var_1.b, false, var_2.b), vec4<bool>(false, true, false, var_2.b))), vec4<u32>(1u, 21681u, 75816u, ~4294967295u)));
    let var_4 = _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 10059i, 2147483647i, u_input.a), -vec4<i32>(u_input.a, u_input.c, -61404i, 1i))) << (firstTrailingBit(~(~vec4<u32>(44959u, 4294967295u, 0u, 1u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(22547i, firstTrailingBit(u_input.b & -32742i), 1i), 10511i, u_input.b, 1i), firstLeadingBit(vec4<i32>(~u_input.b, 0i, u_input.a, ~abs(2383i))));
    var var_5 = Struct_1(~(~0u));
    var_1 = func_5(Struct_1(~var_5.a), 1226i, Struct_3(func_5(Struct_1(var_5.a | 0u), 26271i, Struct_3(Struct_2(var_2.a, var_1.b), var_1.b), select(vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(false, true, false), !vec3<bool>(false, var_2.b, true))), (!var_1.b || var_2.b) & any(vec3<bool>(true, var_1.b, var_2.b))), vec3<bool>(true, var_2.b, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~var_5.a, max(_wgslsmith_dot_vec2_u32(vec2<u32>(81084u, 9462u), vec2<u32>(var_5.a, 31755u)), _wgslsmith_div_u32(14253u, var_5.a)), 1u), -123f);
}

