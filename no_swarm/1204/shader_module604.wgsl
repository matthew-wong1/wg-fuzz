struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(vec4<u32>(min(~u_input.b.x, ~(~0u)), 1u, ~1u, ~74514u), u_input.a, vec3<bool>(!arg_1.c.x, true, true));
    var var_1 = _wgslsmith_f_op_f32(ceil(-519f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1226f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) * -1298f))) - _wgslsmith_f_op_f32(trunc(563f)));
    var var_2 = Struct_3(u_input.b, ~(~(49781u ^ arg_0.x)), var_0.c);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(135f, -462f))) + 1f)));
    return 451f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_2(Struct_1(-9167i, select(vec4<bool>(true, true, true, arg_1), select(select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, false, true), true), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(false, false, arg_1, arg_1)), arg_1), min(_wgslsmith_mult_u32(u_input.a, 1u), u_input.b.x), vec4<i32>(-15730i, 3308i, max(-9888i, _wgslsmith_mod_i32(2147483647i, 1i)), ~(~(-9046i)))));
    var var_1 = var_0.a.b.x;
    var_1 = any(vec2<bool>(true, all(vec4<bool>(var_0.a.b.x, arg_1, false, true)) & false));
    var var_2 = _wgslsmith_f_op_f32(round(-822f));
    let var_3 = countOneBits(~firstLeadingBit(var_0.a.d.x));
    return arg_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 1405f != _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(u_input.b.zxz, Struct_3(u_input.b, _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xz), vec3<bool>(true, false, false)))), all(vec2<bool>(true, all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-599f)), _wgslsmith_f_op_f32(f32(-1f) * -285f)))));
    let var_1 = abs(min(vec4<u32>(~max(u_input.a, u_input.b.x), 17489u, 0u, u_input.c), u_input.b));
    let var_2 = 870f;
    let var_3 = Struct_2(Struct_1(1i, vec4<bool>(var_2 < -1326f, any(!vec4<bool>(true, var_0, false, var_0)), false, var_0), 13465u, vec4<i32>(1343i, 1i, max(max(29290i, 3433i), abs(-6793i)), 30948i)));
    let var_4 = -var_3.a.a;
    return Struct_1(~(-(~5699i)), vec4<bool>(true != (true && any(var_3.a.b.yw)), select((i32(-1i) * -1i) <= -var_3.a.d.x, var_0, true), var_3.a.b.x, var_3.a.b.x & (true && any(var_3.a.b))), ~abs((u_input.a | 48473u) >> (_wgslsmith_clamp_u32(4294967295u, 0u, 5932u) % 32u)), select(select(~(vec4<i32>(-9881i, var_3.a.d.x, 19305i, var_4) >> (u_input.b % vec4<u32>(32u))), vec4<i32>(select(-1i, var_4, true), 1i, var_3.a.a, ~var_4), !var_3.a.b), var_3.a.d, vec4<bool>(false, (28021u < u_input.c) || false, all(select(vec4<bool>(false, var_3.a.b.x, true, var_3.a.b.x), var_3.a.b, true)), var_0)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -506f);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-299f * _wgslsmith_f_op_f32(-1091f - -1480f)) - -1000f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(abs(573f)), _wgslsmith_f_op_f32(sign(1701f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1079f, var_3, 655f), vec3<f32>(-308f, var_3, var_3), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-311f, 959f, var_3), vec3<f32>(var_3, -394f, var_3), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, var_3, -523f) + vec3<f32>(470f, var_3, 849f))))))));
    return 50476u;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = vec3<u32>(1u, 4294967295u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.zz, ~_wgslsmith_mod_vec2_u32(u_input.b.wx, u_input.b.xw))));
    var_0 = u_input.b.wyz;
    var_0 = u_input.b.wwx;
    var_0 = u_input.b.yzz;
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_5((i32(-1i) * -41819i) ^ _wgslsmith_sub_i32(arg_0, arg_0), func_2(), max(u_input.b.zx, select(var_0.xy, vec2<u32>(7349u, u_input.c), vec2<bool>(true, false))), ~max(-13681i, 35779i)), ~abs(var_0.x) << (~_wgslsmith_mod_u32(u_input.a, var_0.x) % 32u), var_0.x | ((var_0.x ^ 1u) ^ 68467u)), countOneBits(~reverseBits(vec3<u32>(u_input.c, u_input.a, var_0.x)) & (u_input.b.wzz << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.b.x, 1u)) % vec3<u32>(32u)))));
    return Struct_2(Struct_1(0i, vec4<bool>(true, any(vec4<bool>(true, true, true, true)), arg_1.x != _wgslsmith_f_op_f32(-arg_1.x), true), abs(1708u), vec4<i32>(arg_0, firstLeadingBit(arg_0), reverseBits(-1i), _wgslsmith_div_i32(arg_0 ^ arg_0, -1i << (var_0.x % 32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = Struct_3(~(u_input.b & _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(12955u, var_0.x, 10234u, u_input.b.x), vec4<u32>(6830u, u_input.c, var_0.x, 26153u)), u_input.b)), reverseBits(12007u), !select(vec3<bool>(false, arg_0.a.b.x, true), arg_0.a.b.zwx, !vec3<bool>(arg_0.a.b.x, false, arg_0.a.b.x)));
    var_1 = Struct_3(vec4<u32>(abs(arg_3) << (reverseBits(_wgslsmith_add_u32(0u, var_1.b)) % 32u), ~(_wgslsmith_mod_u32(1u, arg_3) ^ ~arg_0.a.c), 0u, var_1.a.x), arg_0.a.c, !vec3<bool>(true, any(!vec3<bool>(arg_0.a.b.x, var_1.c.x, false)), true && any(var_1.c.zx)));
    var_1 = Struct_3(vec4<u32>((~u_input.a ^ (u_input.a >> (var_0.x % 32u))) << (_wgslsmith_mod_u32(~var_0.x, 1u) % 32u), ~var_1.a.x << (arg_0.a.c % 32u), var_1.a.x, ~42640u), 11905u, func_2().b.xzw);
    var_1 = Struct_3((var_1.a >> ((firstTrailingBit(vec4<u32>(var_1.b, 29715u, 81167u, 0u)) >> (var_1.a % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(~arg_3, abs(_wgslsmith_mult_u32(arg_0.a.c, 4294967295u)), ~(var_0.x << (var_1.b % 32u)), min(1u, 0u)) % vec4<u32>(32u)), countOneBits(~(~32729u)), arg_0.a.b.yxx);
    return func_1(arg_1.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-348f, 1622f, 1146f, -1053f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-283f, -575f, 1000f, -420f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, 1602f, -371f, 998f) * vec4<f32>(-584f, -406f, -240f, 1053f)))))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = func_2().d.zxz;
    var var_1 = !arg_2.a.b.yzw;
    var var_2 = vec2<bool>(arg_0.a.b.x, false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3 - 743f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-759f, 1331f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_3)))), 853f)));
    let var_4 = arg_0;
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = func_7(func_6(func_1(-_wgslsmith_add_i32(1i, 39599i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1125f, -1000f, -109f, -750f), vec4<f32>(-595f, -1373f, -523f, 749f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, 264f, 106f, 1420f))))), abs(-abs(vec4<i32>(-1i, -1i, -1i, 1i))), ~max(min(-15999i, 12734i), _wgslsmith_clamp_i32(0i, -1i, 0i)), 61731u), ~(~vec3<i32>(~(-20361i), func_2().a, 1i)), func_6(Struct_2(Struct_1(-54867i, vec4<bool>(true, true, true, true), ~1u, _wgslsmith_clamp_vec4_i32(vec4<i32>(43636i, -19603i, -2147483647i, 2147483647i), vec4<i32>(-14642i, 18162i, -35846i, -9269i), vec4<i32>(2147483647i, 4670i, 1i, -2110i)))), vec4<i32>(1i, abs(9954i << (var_0.x % 32u)), -(~(-1i)), 1i), 1i, 5270u), _wgslsmith_f_op_f32(round(1f)));
    let var_2 = Struct_3(select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 48504u, u_input.b.x, 4294967295u), vec4<u32>(var_0.x, u_input.c, 25130u, 1u) << (vec4<u32>(43630u, 4294967295u, 4294967295u, var_0.x) % vec4<u32>(32u))), ~u_input.b, func_2().b.x), 4294967295u, !vec3<bool>(var_1 < (i32(-1i) * -2147483647i), false, false));
    var_0 = ~var_2.a;
    var var_3 = min(~abs(~(~0u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(56265u, _wgslsmith_mod_u32(select(var_0.x, 55410u, true), ~4294967295u)), ~_wgslsmith_clamp_u32(~32204u, ~0u, reverseBits(var_2.b)), var_2.b));
    var var_4 = u_input.b.yzx;
    var_3 = select(4294967295u, max(var_0.x, var_0.x), func_2().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~_wgslsmith_sub_u32(abs(0u), u_input.a) & (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, var_4.x, 667u)), vec3<u32>(0u, 0u, var_4.x)) << (45570u % 32u)));
}

