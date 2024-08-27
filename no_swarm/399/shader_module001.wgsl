struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(9456u, ~1u, 1u));
    var var_1 = Struct_1(~20469u);
    let var_2 = arg_0 ^ (~(vec4<u32>(var_0.a, arg_0.x, u_input.a.x, var_0.a) >> (firstTrailingBit(vec4<u32>(var_1.a, 15779u, arg_0.x, var_0.a)) % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(~74347u, _wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(u_input.a.x, var_1.a, 0u)), min(var_1.a, 4294967295u), _wgslsmith_mod_u32(59198u, 23362u))));
    var var_3 = false;
    return true;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = max(~u_input.a, u_input.a);
    var var_1 = 43968u;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(arg_0 * 651f))));
    let var_3 = (abs(21059i) ^ -(u_input.b ^ -u_input.b)) << (u_input.a.x % 32u);
    var var_4 = arg_0;
    return select(!(!vec2<bool>(func_3(vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x), vec2<i32>(u_input.b, 20060i)), true)), vec2<bool>(!(!select(true, true, true)), !(true & (arg_0 > var_2.x))), vec2<bool>(!((u_input.b & 31531i) != min(var_3, var_3)), true));
}

fn func_1() -> i32 {
    let var_0 = select(vec2<bool>(min(-u_input.b, _wgslsmith_div_i32(21849i, u_input.b)) >= u_input.b, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), !func_2(_wgslsmith_f_op_f32(f32(-1f) * -1158f)), vec2<bool>(select(!any(vec2<bool>(false, true)), all(vec2<bool>(true, true)), false), false));
    var var_1 = vec3<u32>(114566u, u_input.a.x, 4294967295u) >> (_wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(u_input.a.zxw, u_input.a.yyy)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(0u, 0u, 0u), vec3<u32>(24261u, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a.x, 52482u), u_input.a.xxx)) % vec3<u32>(32u));
    var var_2 = min(u_input.a.zzw, firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.a.xxy, _wgslsmith_mult_vec3_u32(select(u_input.a.zzx, u_input.a.yxw, vec3<bool>(true, true, true)), vec3<u32>(u_input.a.x, var_1.x, 4294967295u)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1642f), _wgslsmith_f_op_f32(trunc(1762f)))))));
    let var_4 = vec3<i32>(u_input.b, firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_i32(select(reverseBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-35006i, -37076i) >> (u_input.a.xx % vec2<u32>(32u)), true), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(36043i, u_input.b), vec2<i32>(-1438i, -85300i))))) & abs(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, -2147483647i, -6021i, u_input.b)), -(u_input.b | -16762i), u_input.b));
    return var_4.x;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(4294967295u);
    var var_1 = _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(469f, -138f)))), _wgslsmith_f_op_f32(floor(-591f))))));
    var var_2 = abs(vec2<i32>(arg_0, 1i));
    var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 36939u)) | u_input.a.x, _wgslsmith_add_u32(44382u, _wgslsmith_div_u32(var_0.a, var_0.a))) | max(u_input.a.x, u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1287f)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) * _wgslsmith_f_op_f32(abs(arg_2))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(623f - arg_2)))), -112f));
    return Struct_1(~_wgslsmith_mod_u32(var_0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, var_0.a), vec4<u32>(23878u, 1u, 0u, u_input.a.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a.wy, vec2<u32>(arg_1.a, 61898u) << (vec2<u32>(~4294967295u ^ (u_input.a.x >> (0u % 32u)), arg_1.a) % vec2<u32>(32u)));
    let var_1 = 19410u;
    let var_2 = all(!vec3<bool>(1u <= _wgslsmith_sub_u32(15228u, u_input.a.x), !func_2(161f).x, true));
    var var_3 = !(!(!(!select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(var_2, true, false, var_2)))));
    var var_4 = max(max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, -46561i), 4366i | u_input.b), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -22576i), vec2<i32>(-2147483647i, u_input.b)))), ~abs(~(-2147483647i))) << (_wgslsmith_mult_u32(firstLeadingBit(~1u), 32673u) % 32u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-631f)), -2027f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1260f), 1000f, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(190f, 668f) + -375f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * 355f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(693f, 530f, -1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 188f, 1488f), vec3<f32>(2707f, -908f, 381f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(u_input.a.x, func_4(u_input.b | u_input.b, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -766f), func_1()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(942f, 280f, 2012f), vec3<f32>(469f, 1812f, 748f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -1930f))), _wgslsmith_f_op_f32(-865f + -1187f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(193f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f * -611f))), select(true, false, false)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(u_input.a.x, min(u_input.a.x, countOneBits(~1u))));
    var var_2 = Struct_1(~(~(u_input.a.x & _wgslsmith_mod_u32(var_1.a, var_1.a))));
    var_2 = func_4(u_input.b, vec3<bool>(false, true, false), -859f, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(49954i, u_input.b, u_input.b, -2147483647i)), vec4<i32>(2147483647i, u_input.b, u_input.b, -18788i) << ((_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_1.a, 4294967295u, 4946u)) ^ vec4<u32>(u_input.a.x, u_input.a.x, 11190u, 0u)) % vec4<u32>(32u))));
    var_1 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(530f, vec4<i32>(~(-59168i), ~min(u_input.b, _wgslsmith_div_i32(-1i, 2147483647i)), _wgslsmith_add_i32(46458i, 1i), -22358i));
}

