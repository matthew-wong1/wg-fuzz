struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = u_input.a;
    let var_0 = any(vec3<bool>(true, arg_0.x, arg_0.x));
    var var_1 = !(!arg_0);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1546f, -2465f) + _wgslsmith_f_op_f32(521f - -487f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(488f, -1000f, var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-439f, 1028f, 2014f)))))));
    return var_2.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1901f - _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1333f, -369f) * _wgslsmith_f_op_f32(select(-456f, -1000f, true))), -613f)), ~min(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 32778u)), vec3<u32>(2751u, 0u, 6641u))));
    var var_1 = var_0.a.a.zz;
    let var_2 = !any(select(arg_1.wx, arg_1.wz, all(!arg_1.wy)));
    var var_3 = ~(~1i) | ~_wgslsmith_mod_i32(arg_0.b.x, firstTrailingBit(1i));
    let var_4 = arg_1.x;
    return vec4<i32>(-1i, -32389i, arg_2.b.x, arg_0.b.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> bool {
    global0 = arg_1.xzw;
    var var_0 = Struct_3(vec3<f32>(-194f, _wgslsmith_f_op_f32(893f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(307f, 376f)))), 241f), arg_1, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-123f, -1041f, -698f), vec3<f32>(-333f, 206f, 1269f)))) - vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -335f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(872f)), _wgslsmith_f_op_f32(-685f - 287f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f + -502f)))));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), var_0.d.x, -335f), abs(var_0.b), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)) != var_0.a.x, var_0.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, -940f), _wgslsmith_f_op_f32(-301f * 103f), _wgslsmith_f_op_f32(round(var_0.d.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2382f, var_0.a.x, var_0.a.x))))) * var_0.a));
    var var_2 = 1272f;
    return any(vec4<bool>(var_0.c, select(false, all(!vec3<bool>(arg_0.x, arg_0.x, var_0.c)), var_0.c), true, all(!vec4<bool>(true, arg_0.x, arg_0.x, false))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(-1000f, -884f));
    var var_1 = ~(1u ^ ~select(~0u, ~56387u, true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1372f, arg_1.a.x, 1436f)), arg_1.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(false, arg_0, arg_0), u_input.a.yy)))))));
    global0 = u_input.a;
    var var_3 = vec4<bool>(arg_0, true, all(vec4<bool>(!(arg_0 | arg_0), arg_0, !arg_0 || any(vec2<bool>(false, arg_0)), arg_0)), !(!func_4(!vec2<bool>(arg_0, false), func_3(Struct_3(vec3<f32>(2000f, var_0, 2095f), vec4<i32>(0i, 2147483647i, global0.x, 12519i), arg_0, vec3<f32>(var_2.a.x, 745f, arg_1.a.x)), vec4<bool>(arg_0, arg_0, true, arg_0), Struct_3(arg_1.a, vec4<i32>(u_input.a.x, u_input.a.x, 18571i, 1i), false, vec3<f32>(515f, arg_1.a.x, -468f))))));
    return vec3<u32>(76262u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(reverseBits(vec2<u32>(4294967295u, 1u)), ~vec2<u32>(15780u, 86248u), true), ~(~vec2<u32>(623u, 1736u))), _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, max(23161u, 4294967295u)), vec2<u32>(~38597u, abs(10914u)))), countOneBits(~1u));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = (any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))) & any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)))) && true;
    var var_1 = ~vec4<i32>(global0.x, _wgslsmith_add_i32(_wgslsmith_add_i32(min(global0.x, global0.x), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 32286i), ~vec4<i32>(global0.x, 37800i, -42894i, 0i))), abs(max(-91i, u_input.a.x)) >> (arg_0.x % 32u), 2147483647i);
    var var_2 = _wgslsmith_add_u32(4294967295u, ~arg_0.x);
    var_2 = ~arg_0.x;
    let var_3 = false;
    return Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1000f) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(ceil(-1536f))), arg_1) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-716f, arg_1, 426f), vec3<f32>(arg_1, 818f, -610f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 948f, 747f))))))), select(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1610i, global0.x), firstTrailingBit(0i), abs(-10712i)), u_input.a.x, -10417i, countOneBits(u_input.a.x)), firstLeadingBit(min(~vec4<i32>(u_input.a.x, u_input.a.x, -27419i, 2147483647i), ~vec4<i32>(-37459i, -11311i, 0i, var_1.x))), vec4<bool>(var_3, (true || var_3) & !var_3, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), false != !var_3)), any(vec4<bool>(var_3, !(u_input.a.x != var_1.x), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(var_3, true, var_3, var_3)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(!vec3<bool>(false, false, var_3), ~vec2<i32>(17614i, var_1.x)))));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_3 {
    global0 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i) * -(arg_0.b.xxw & arg_0.b.wzw), min(u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1, 0i), vec3<i32>(55700i, -1i, 1i)), u_input.a)), select(vec3<bool>(all(vec2<bool>(arg_2, true)), -1139f < arg_0.d.x, arg_0.c), vec3<bool>(!arg_0.c, arg_0.c, true), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_i32(-u_input.a, u_input.a) ^ (min(-vec3<i32>(arg_1, 0i, u_input.a.x), arg_0.b.xxw | arg_0.b.yyw) << (vec3<u32>(~4552u, _wgslsmith_add_u32(11607u, 20028u), 33819u) % vec3<u32>(32u))), ~(-select(vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), -u_input.a, func_5(vec3<u32>(90259u, 1u, 1u), -712f).c)));
    var var_0 = select(!vec4<bool>(select(false, true, !arg_0.c), !arg_2, any(!vec3<bool>(arg_2, arg_0.c, true)), arg_0.a.x == _wgslsmith_f_op_f32(floor(-1084f))), vec4<bool>(true, all(!vec2<bool>(arg_2, arg_0.c)), all(select(select(vec3<bool>(arg_0.c, true, true), vec3<bool>(true, arg_2, arg_2), arg_0.c), select(vec3<bool>(arg_2, arg_0.c, false), vec3<bool>(true, false, arg_2), vec3<bool>(arg_0.c, false, true)), func_5(vec3<u32>(53354u, 16027u, 23223u), -1039f).c)), func_5(func_1(select(arg_0.c, arg_2, arg_2), Struct_1(vec3<f32>(arg_0.a.x, -620f, 715f))), arg_0.d.x).c), !select(vec4<bool>(-13832i == global0.x, all(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), any(vec3<bool>(arg_2, false, arg_0.c)), !arg_2), !vec4<bool>(arg_2, true, true, false), select(!vec4<bool>(arg_2, true, arg_2, true), !vec4<bool>(true, arg_0.c, true, arg_0.c), false)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2249f, _wgslsmith_f_op_f32(f32(-1f) * -602f), _wgslsmith_f_op_f32(-151f * 2165f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2214f, -1145f, 1352f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(161f)), 395f, _wgslsmith_f_op_f32(ceil(-1245f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-976f, 1050f, -224f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1273f, -553f, 275f) - vec3<f32>(-101f, 339f, 1680f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1012f, -441f, 413f), vec3<f32>(1000f, -1474f, -468f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-785f, 1520f, -427f) + vec3<f32>(-1115f, -732f, -1101f)))))));
    let var_1 = func_6(func_5(func_1(false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 822f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f * _wgslsmith_f_op_f32(var_0.x + var_0.x)) - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, -37345i) & (-31887i << (1u % 32u)), u_input.a.x), true);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(u_input.a.x), -25060i, 1i), u_input.a.x) >> (vec2<u32>(1u, ~(~72442u)) % vec2<u32>(32u)), countOneBits(vec2<i32>(_wgslsmith_sub_i32(var_1.b.x, ~0i), 0i)));
    var_2 = -(_wgslsmith_sub_i32(var_1.b.x & -7500i, ~(i32(-1i) * -57212i)) & ~func_5(reverseBits(vec3<u32>(0u, 1u, 95302u)), -1000f).b.x);
    var_2 = global0.x;
    var var_3 = !var_1.c;
    var var_4 = !(!(!select(select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true)), vec2<bool>(true, var_1.c), all(vec2<bool>(var_1.c, var_1.c)))));
    let var_5 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(vec4<u32>(1u, 1u, 70629u, 35771u)) % vec4<u32>(32u))) | vec4<u32>(~1u, 1u << (1u % 32u), 1u, 1u), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(58172u, 59072u, 34866u)), ~vec3<u32>(43513u, 23110u, 8297u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 14773u), firstTrailingBit(vec3<u32>(0u, 31944u, 81578u))), 57461u, ~(~16948u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_div_f32(func_6(var_1, _wgslsmith_div_i32(abs(global0.x), countOneBits(83175i)), var_1.c).d.x, var_1.d.x), _wgslsmith_clamp_vec2_u32(abs(var_5.wx), vec2<u32>(var_5.x, 14787u), ~vec2<u32>(1u, _wgslsmith_sub_u32(var_5.x, 77372u))), var_5.x);
}

