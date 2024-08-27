struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(186f + -752f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)))));
    var var_2 = var_0.b;
    var_2 = Struct_1(_wgslsmith_add_vec2_i32(firstLeadingBit(var_0.a.yx), ~vec2<i32>(var_0.b.a.x, -1i)) >> (~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(17470u, arg_3)) % vec2<u32>(32u)));
    let var_3 = -vec2<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.a.yyy << (vec3<u32>(arg_3, arg_1, 65186u) % vec3<u32>(32u))), -_wgslsmith_div_vec3_i32(vec3<i32>(25731i, -50918i, var_2.a.x), arg_0.a)), _wgslsmith_clamp_i32(abs(arg_0.b.a.x), var_0.b.a.x, var_0.a.x));
    return select((~(~vec3<u32>(arg_3, arg_3, u_input.c)) >> (vec3<u32>(firstTrailingBit(arg_3), u_input.c, 1u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c) & vec3<u32>(u_input.c, 13408u, arg_3), abs(vec3<u32>(arg_3, arg_1, arg_3))), vec3<u32>(~arg_3, reverseBits(66994u), 34174u)), _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(1u, arg_3, arg_3) >> (vec3<u32>(0u, 9294u, u_input.c) % vec3<u32>(32u))), ((vec3<u32>(63884u, u_input.c, 6944u) | vec3<u32>(arg_1, 11064u, 106154u)) ^ vec3<u32>(u_input.c, arg_1, u_input.c)) | ~vec3<u32>(55440u, arg_3, arg_1)), vec3<bool>(all(vec3<bool>(true, true, true)), true, true));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-289f, _wgslsmith_f_op_f32(f32(-1f) * -161f))), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(sign(arg_0.c.x)), true));
    var var_0 = Struct_4(arg_2.a, arg_2.c, vec3<u32>(arg_2.c.x, 47493u, u_input.c));
    var_0 = Struct_4(false, reverseBits(vec3<u32>(~1u, abs(1u), min(635u, 1u))), ~(abs(var_0.b) << (arg_2.b % vec3<u32>(32u))));
    let var_1 = Struct_4(true, ~(~vec3<u32>(var_0.b.x, select(32301u, u_input.c, arg_2.a), abs(arg_2.b.x))), func_3(Struct_3(abs(-u_input.a.zxx), Struct_1(u_input.a.xx)), 1u, Struct_1(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.a.x, arg_0.d.a.x), vec2<i32>(-13014i, arg_0.d.a.x)), arg_0.d.a)), 9470u));
    let var_2 = vec3<u32>(firstLeadingBit(var_0.b.x), 4294967295u, countOneBits(_wgslsmith_sub_u32(~(~var_1.b.x), var_0.c.x)));
    return Struct_1(-vec2<i32>(arg_0.d.a.x | u_input.a.x, 1i) << (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(20807u, 68562u), var_2.yx), vec2<u32>(var_0.b.x, 6248u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(round(955f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2026f)) + _wgslsmith_f_op_f32(-533f * 1f));
    let var_0 = arg_2.a.yx;
    let var_1 = Struct_4(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)) || !(any(vec4<bool>(true, true, true, true)) && true), vec3<u32>(countOneBits(u_input.c), ~u_input.c, u_input.c) << (~reverseBits(vec3<u32>(u_input.c, 1u, 21735u)) % vec3<u32>(32u)), firstTrailingBit(~firstLeadingBit(vec3<u32>(4294967295u, u_input.c, 33922u)) ^ ~(vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u)))));
    var var_2 = 25137i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f * -1078f) + _wgslsmith_f_op_f32(floor(-240f))))) * arg_1.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))));
    let var_2 = -2147483647i;
    var var_3 = var_1.x;
    global0 = _wgslsmith_f_op_f32(func_4(u_input.a.xzx, _wgslsmith_f_op_vec3_f32(round(arg_1.c.wxw)), Struct_3(vec3<i32>(min(u_input.a.x, -u_input.a.x), var_2, 56438i), func_2(arg_1, arg_1.e, Struct_4(true, vec3<u32>(14995u, 691u, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u) & vec3<u32>(u_input.c, 1u, u_input.c)), var_1.x))));
    return any(select(!select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), all(vec3<bool>(var_1.x, false, true))), !select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, !(!var_1.x), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~(~(~1u))), select(u_input.c, ~1u, false) | 4294967295u, 0u, 1u);
    let var_1 = reverseBits(var_0.x);
    var var_2 = vec4<bool>(!(true | func_1(Struct_3(vec3<i32>(u_input.b, u_input.a.x, u_input.b), Struct_1(u_input.a.wy)), Struct_2(vec2<f32>(311f, -1116f), 2147483647i, vec4<f32>(222f, -424f, 1323f, -493f), Struct_1(u_input.a.yw), -1041f))), true, !(!all(vec4<bool>(true, false, true, true))), true);
    let var_3 = !select(select(vec3<bool>(!var_2.x, false, true), select(!var_2.yww, !vec3<bool>(var_2.x, var_2.x, false), select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_2.x, true), var_2.x)), true), var_2.xyy, select(vec3<bool>(var_2.x, var_2.x, var_2.x && true), select(var_2.wwy, select(var_2.yyy, vec3<bool>(false, true, var_2.x), var_2.wzy), false), vec3<bool>(false, var_2.x, !var_2.x)));
    let var_4 = Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - 783f)))), 13314i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, _wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -1761f)) + vec4<f32>(-2444f, -1091f, 125f, 441f))), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, 1344f)), vec2<f32>(-1660f, 1233f))), -69885i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, 1865f, 849f, -674f) - vec4<f32>(687f, -2205f, -851f, 536f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1944f, 685f, -2175f) - vec4<f32>(1610f, -1190f, 1249f, -429f))), Struct_1(firstTrailingBit(u_input.a.yy)), _wgslsmith_f_op_f32(func_4(~vec3<i32>(u_input.a.x, u_input.b, -23047i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-187f, -1440f, -1911f))), Struct_3(u_input.a.yxw, Struct_1(vec2<i32>(5898i, 1i)))))), -588f, Struct_4(func_1(Struct_3(u_input.a.xxy, Struct_1(u_input.a.wy)), Struct_2(vec2<f32>(-668f, -1226f), -1i, vec4<f32>(-1099f, -751f, -676f, -2062f), Struct_1(u_input.a.xz), 242f)), var_0.zxz, var_0.wxz), !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f))));
    let var_5 = Struct_4(!(!all(vec3<bool>(var_2.x, true, var_3.x)) & !var_2.x), ~_wgslsmith_div_vec3_u32(~var_0.wwz, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, u_input.c, var_1), var_0.xzy)) << (abs(abs(vec3<u32>(var_0.x, 1u, u_input.c))) % vec3<u32>(32u)), abs(abs(var_0.xxz)));
    let var_6 = var_4.d.a;
    var_2 = !vec4<bool>(var_4.e <= _wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(func_4(u_input.a.zzy, vec3<f32>(var_4.e, var_4.c.x, 1598f), Struct_3(u_input.a.zxw, Struct_1(vec2<i32>(var_4.d.a.x, u_input.b)))))), select(select(var_2.x, all(var_2.yxw), true), (u_input.c & 13470u) >= ~0u, 1396u > var_5.b.x), any(!(!var_3)), !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-2228f)), 0u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_4.a.x, -2432f), _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(664f * var_4.e)), _wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(-301f - var_4.e)), _wgslsmith_f_op_f32(f32(-1f) * -234f)), vec4<f32>(var_4.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_4.e, 440f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.a.x + 926f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.a.x + -311f)))), any(!(!vec4<bool>(true, true, var_3.x, true))))), ~(~abs(8784u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(var_5.c, var_0.yyz) >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.x, 1u), ~79694u, var_5.b.x) % 32u)));
}

