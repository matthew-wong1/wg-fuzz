struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f * arg_2)));
    var_0 = -126f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, _wgslsmith_f_op_f32(-181f - 349f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -425f);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1333f))), 813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(385f + var_1.x)) + _wgslsmith_f_op_f32(-244f * -781f)), _wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(var_1.x - 947f)), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 + var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), !vec4<bool>(true, _wgslsmith_f_op_f32(arg_2 * -394f) <= -1429f, false, false)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(u_input.d, u_input.c);
    var var_1 = 0u;
    var_1 = 1167u;
    var_0 = Struct_3(select(firstLeadingBit(reverseBits(var_0.a) | _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.zx)), _wgslsmith_mod_i32(1i, -(~18412i)), true), ~abs(~(~u_input.c)));
    var_1 = u_input.c.x;
    return ~(abs(arg_2.a) >> (~var_0.b.x % 32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_add_i32(u_input.a, func_4(Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1049f))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-1077i, u_input.b.x, 17696i), arg_0.x, -1244f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 1230f), _wgslsmith_f_op_f32(step(-1382f, -421f)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, 629f, -1852f, -1886f) - vec4<f32>(193f, 1000f, 321f, 847f)))), abs(_wgslsmith_mod_u32(u_input.c.x, 0u)) >= arg_0.x, Struct_2(_wgslsmith_clamp_i32(~0i, max(17708i, u_input.a), -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, 1415f, 2011f)))));
    let var_1 = vec2<bool>(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false))), false);
    var var_2 = vec2<u32>(u_input.c.x, _wgslsmith_div_u32(arg_0.x, arg_0.x));
    var_2 = _wgslsmith_clamp_vec2_u32(arg_0.xy, ~firstLeadingBit(countOneBits(arg_0.yz)), (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.x, var_2.x), ~vec2<u32>(arg_0.x, var_2.x)) >> (vec2<u32>(2329u, u_input.c.x << (21568u % 32u)) % vec2<u32>(32u))) >> (arg_0.xz % vec2<u32>(32u)));
    var_2 = u_input.c.zz;
    return 1f;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), -9794i)) - -278f)), true, vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + -765f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1998f * 300f), _wgslsmith_f_op_f32(floor(arg_0.x))), 179f)), _wgslsmith_f_op_f32(-arg_0.x), -1000f), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 1019f, var_1.d, -268f)))) * var_1.e.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * _wgslsmith_f_op_vec4_f32(ceil(var_1.e.a))))));
    var_0 = !var_1.b && any(vec2<bool>(var_1.b, any(!vec4<bool>(false, false, var_1.b, false))));
    return var_1.b;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-942f, _wgslsmith_div_f32(342f, -643f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(70598u, 1u, 431u), u_input.d)))), !(!all(vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 684f, 1335f, 115f) - vec4<f32>(-1235f, -550f, -270f, 619f))))));
    var var_2 = any(!vec3<bool>(any(vec2<bool>(true, true)), true, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.wz * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-166f, 1105f), _wgslsmith_f_op_vec2_f32(-var_1.a.ww)))) * vec2<f32>(_wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(ceil(-183f)))))));
    var var_4 = vec2<bool>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(266f * var_3.x) - var_3.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_div_f32(-256f, var_1.a.x))));
    return u_input.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, 64200u), func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 1000f, -998f))), u_input.a >= _wgslsmith_add_i32(u_input.b.x, u_input.b.x), true, _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<u32>(4294967295u, 40371u, u_input.c.x, 54658u)), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))) >> (~vec2<u32>(11025u | u_input.c.x, 56472u) % vec2<u32>(32u)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - -2158f)) + -1960f), _wgslsmith_div_f32(1061f, 802f)), _wgslsmith_f_op_vec4_f32(func_3(u_input.b, ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(597f)) + _wgslsmith_f_op_f32(-1379f * -161f))))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1361f), _wgslsmith_f_op_f32(min(-1049f, _wgslsmith_f_op_f32(f32(-1f) * -2738f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(170f)), 308f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))) - 1047f));
}

