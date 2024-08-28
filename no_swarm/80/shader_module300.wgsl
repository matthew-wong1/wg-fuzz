struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 713f))))))));
    global2 = _wgslsmith_div_u32(~(~reverseBits(12783u)) & (max(_wgslsmith_sub_u32(arg_2, arg_2), abs(4294967295u)) & abs(~arg_2)), arg_2);
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(select(1u, arg_2, global1.x), _wgslsmith_div_u32(4294967295u, 34156u)) << (min(arg_2, arg_2) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2 << (~arg_2 % 32u), select(_wgslsmith_mult_u32(18143u, 1u), ~arg_2, all(global1.xyz)), ~14750u), ~(~vec3<u32>(54155u, arg_2, 0u)) & min(~vec3<u32>(arg_2, arg_2, arg_2), ~vec3<u32>(arg_2, 27031u, arg_2))));
    global0 = !(!arg_1);
    var var_2 = Struct_1(arg_0.wz, ~_wgslsmith_div_u32(~var_1, var_1), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wy - arg_0.zy)))), 929f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(-867f + -532f)) - arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d.x - var_2.e))), !global1.x)));
}

fn func_2() -> f32 {
    global2 = 0u;
    var var_0 = Struct_3(Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(678f, 1798f), vec2<f32>(1175f, -1003f), false)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-364f, 881f), vec2<f32>(1941f, -557f), true))), ~(~56680u), -1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(304f, 181f) + vec2<f32>(-1101f, -452f)), -889f), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(489f, -433f), vec2<f32>(-357f, 818f))))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1242f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(286f, -980f), vec2<f32>(226f, -615f))), 323f), -896f), min(countOneBits(~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 70876i))), ~(~min(vec4<i32>(-2147483647i, 13009i, u_input.a.x, u_input.a.x), vec4<i32>(11772i, 50051i, u_input.a.x, -1i)))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-446f, _wgslsmith_f_op_f32(var_0.a.d * 708f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - _wgslsmith_f_op_f32(-561f + var_0.a.d))), _wgslsmith_f_op_f32(-var_0.a.b.a.x)), ~(_wgslsmith_div_u32(reverseBits(var_0.a.b.b), _wgslsmith_clamp_u32(var_0.a.b.b, 1u, var_0.a.b.b)) >> (var_0.a.c.b % 32u)), _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.c.c)) - _wgslsmith_f_op_f32(var_0.a.c.c + var_0.a.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(var_0.a.b.d.x * -568f)), global1.x, 0u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a.c.a)) - _wgslsmith_f_op_vec2_f32(-var_0.a.c.a)) + _wgslsmith_f_op_vec2_f32(abs(var_0.a.c.a))))), _wgslsmith_f_op_f32(f32(-1f) * -2000f));
    global1 = select(select(select(!vec4<bool>(global1.x, global1.x, true, global1.x), select(!vec4<bool>(false, true, global1.x, global1.x), !vec4<bool>(false, false, global1.x, false), true), global1.x), select(!(!vec4<bool>(true, true, global1.x, true)), !select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, global1.x, true), false), false), vec4<bool>(-45173i >= u_input.a.x, (51372u << (1u % 32u)) > var_1.b, any(vec3<bool>(false, global1.x, false)) == global1.x, true)), select(select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, global1.x))), select(!vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(global1.x, global1.x, false, true), all(vec3<bool>(false, global1.x, global1.x))), !select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, global1.x, false), global1.x)), select(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, false), false), select(select(vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), !vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, global1.x, true, true)), global1.x), true), global1.x);
    let var_2 = var_0.a.b.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.d))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    global1 = select(vec4<bool>(false, global1.x, all(!select(global1.xyy, global1.zww, global1.x)), !global1.x), select(!select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, true, global1.x, true)), !vec4<bool>(global1.x, true, global1.x, false), all(global1.yz)), !vec4<bool>(all(vec3<bool>(false, global1.x, false)), true, global1.x & global1.x, all(vec3<bool>(global1.x, global1.x, global1.x))), false), true);
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, arg_1.d.x, 200f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.e, arg_1.d.x, 2453f)))), vec3<f32>(_wgslsmith_f_op_f32(select(1766f, -2284f, global1.x)), 682f, -1459f))) - vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1489f, 523f)))), -2370f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1304f * 554f) + _wgslsmith_f_op_f32(abs(arg_1.d.x))), _wgslsmith_f_op_f32(-arg_0.b.a.x)))));
    let var_1 = all(!select(select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, false), global1.yy, true), select(global1.yw, global1.zy, true)), vec2<bool>(true, global1.x), any(select(vec2<bool>(true, true), global1.wz, false))));
    let var_2 = vec2<bool>(true == (false & !var_1), var_1);
    var var_3 = arg_0.b;
    return global1.wx;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = all(vec3<bool>(!arg_0.x, true, global1.x));
    global2 = 1u;
    var var_1 = select(func_4(Struct_2(vec3<i32>(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), u_input.a), u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(548f, 206f) * vec2<f32>(-1898f, -1390f)), 1u, -1547f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1578f, -275f), vec2<f32>(-1719f, 942f))), _wgslsmith_f_op_f32(func_2())), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 2510f)), 1u, _wgslsmith_div_f32(1533f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(799f, -583f)), -1000f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(-360f)), 72606i >= u_input.a.x))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1512f, 519f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -227f)))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-417f, 1586f))), vec2<f32>(_wgslsmith_f_op_f32(floor(1028f)), -992f), 1000f)), !vec2<bool>(all(!arg_0.xxy), true), arg_0.wz);
    var var_2 = vec3<bool>(true, reverseBits(-1i) == u_input.a.x, reverseBits(countOneBits(10076u)) >= ~min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(49848u, 35149u), vec2<u32>(40112u, 0u))));
    var var_3 = Struct_3(Struct_2(vec3<i32>(-13895i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, 28937i), _wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-882f, 1468f), vec2<f32>(-1600f, 277f)), vec2<f32>(-1907f, -159f), !var_0)), 72514u, 1270f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2154f, -1084f), vec2<f32>(-1108f, 166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-154f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, -1509f) - _wgslsmith_div_vec2_f32(vec2<f32>(-671f, -1269f), vec2<f32>(-470f, 688f))), _wgslsmith_clamp_u32(86405u, 65723u, 18876u) & 33924u, _wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(floor(703f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -434f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2204f, 587f)), any(arg_0))), _wgslsmith_f_op_f32(-2309f * -699f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 866f)), 255f)), -_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 52863i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 14837i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 9870i)), u_input.a.x >> (51259u % 32u), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2813i), u_input.a.zy))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~1u));
    let var_1 = vec4<bool>(global1.x, !global1.x, !(-1257f < _wgslsmith_f_op_f32(sign(-766f))), false);
    let var_2 = ~(~firstTrailingBit(vec2<u32>(~40236u, abs(17938u))));
    global2 = 112829u;
    let var_3 = -vec3<i32>(u_input.a.x, ~u_input.a.x, ~2147483647i & _wgslsmith_clamp_i32(-54025i, u_input.a.x, u_input.a.x)) << (~vec3<u32>(~var_2.x, _wgslsmith_sub_u32(~var_2.x, func_1(vec4<bool>(false, global1.x, false, false))), _wgslsmith_div_u32(16692u, reverseBits(var_2.x))) % vec3<u32>(32u));
    global2 = reverseBits(60635u);
    global1 = !(!vec4<bool>(true, !global1.x || (false | var_1.x), func_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), Struct_1(vec2<f32>(-2172f, -1364f), var_2.x, 1196f, vec2<f32>(-1270f, -455f), 1977f), Struct_1(vec2<f32>(585f, 653f), var_2.x, 615f, vec2<f32>(1426f, -628f), -1217f), -923f), Struct_1(vec2<f32>(-1232f, -607f), 10126u, -1397f, vec2<f32>(-756f, 1618f), -2265f)).x, !global1.x));
    let var_4 = Struct_3(Struct_2(~vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -1i), -u_input.a.x, _wgslsmith_div_i32(-1i, var_3.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-296f, -1000f) * vec2<f32>(-1309f, 1301f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1922f, -2451f))), firstLeadingBit(var_2.x), 837f, vec2<f32>(_wgslsmith_f_op_f32(957f * 237f), _wgslsmith_f_op_f32(940f + 1115f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -807f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-296f * 1524f), 990f), var_2.x, -1695f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 538f), vec2<f32>(480f, -590f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1108f * 1000f), _wgslsmith_f_op_f32(-1000f + 797f), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f * 547f) - _wgslsmith_f_op_f32(func_3(vec4<f32>(1695f, 180f, 1215f, -577f), var_1.x, var_2.x))))), max(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 18492i, 2147483647i, u_input.a.x), vec4<i32>(var_3.x, 2147483647i, -36169i, -38850i)), vec4<i32>(countOneBits(var_3.x), -var_3.x, 1i, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.a.b.b, ~(_wgslsmith_add_u32(var_2.x, var_4.a.c.b) >> (var_4.a.b.b % 32u)), 1u), vec4<i32>(-1i) * -var_4.b);
}

