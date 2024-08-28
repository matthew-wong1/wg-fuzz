struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_3(select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), vec4<bool>(true, !any(vec2<bool>(true, true)), false, select(all(vec3<bool>(true, false, true)), true, any(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(595f, 1367f)))), -780f)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, var_0.b.x, var_0.b.x) * vec3<f32>(var_0.b.x, -983f, var_0.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2417f, var_0.b.x, var_0.b.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-317f, var_0.b.x, 852f), vec3<f32>(-1803f, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(894f, -645f, 1298f), vec3<f32>(var_0.b.x, -705f, var_0.b.x)))))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, 603f, -1020f)))))), vec2<u32>(~u_input.b.x & countOneBits(~140006u), min(_wgslsmith_dot_vec2_u32(~u_input.b.xz, vec2<u32>(12307u, 27025u)), max(u_input.a, _wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(u_input.b.x, 32021u, u_input.a))))));
    var var_2 = vec2<i32>((~_wgslsmith_div_i32(u_input.c.x, 0i) | u_input.c.x) >> (~55868u % 32u), arg_0.x);
    var var_3 = vec2<i32>(select(arg_0.x, (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, global0.x, var_2.x), vec4<i32>(global0.x, 1i, -1i, var_2.x)) ^ var_2.x) & ~(-1i), true), 2176i);
    var var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1489f, var_0.b.x, -1094f), var_1.a.a))) + vec3<f32>(var_4.c.a.x, var_4.a.a.x, _wgslsmith_f_op_f32(var_4.a.a.x * var_4.c.a.x))), vec3<bool>(!(!var_0.a.x), 91911u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.b.xw), true))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> vec3<i32> {
    global0 = abs(-(~min(vec3<i32>(-36163i, global0.x, -36857i) & vec3<i32>(u_input.c.x, -2147483647i, 0i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) | vec3<i32>(-57639i, global0.x, 9226i))));
    var var_0 = Struct_4(Struct_2(arg_3.a.a, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_3.d.d.x, 4294967295u, 41092u), u_input.b), arg_3.a.a, max(~arg_3.a.d, u_input.b.yw)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.c.a.x, arg_3.d.c.a.x, arg_3.b.c.a.x)))), 47494u, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(u_input.c))), ~_wgslsmith_mod_vec2_u32(arg_3.d.d, arg_3.b.d)), _wgslsmith_f_op_f32(sign(arg_3.b.c.a.x)), Struct_2(arg_3.d.c, arg_1 ^ ~arg_1, arg_3.d.a, ~firstTrailingBit(~vec2<u32>(36544u, u_input.b.x))), !(!all(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_3.e, false, true), false))));
    var var_1 = vec2<f32>(-2459f, var_0.d.c.a.x);
    let var_2 = arg_3.d;
    let var_3 = Struct_3(vec4<bool>(var_0.e, _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-11987i, global0.x))).x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -1405f), false, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(998f, arg_3.b.c.a.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a.a.x, arg_3.c) * _wgslsmith_f_op_vec2_f32(-var_0.b.a.a.yy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, arg_3.b.c.a.x))) - var_0.b.a.a.xz)));
    return vec3<i32>(u_input.c.x, ~(-reverseBits(_wgslsmith_sub_i32(u_input.c.x, 14857i))), min(i32(-1i) * -u_input.c.x, -u_input.c.x));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    global0 = -arg_2;
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-440f, 822f, 164f)))), countOneBits((u_input.a >> (13494u % 32u)) & ~30636u), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1188f, arg_1) - vec3<f32>(2027f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(-1137f, arg_1, arg_1))))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), firstLeadingBit(u_input.a)), 113236u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -1000f), vec3<f32>(-217f, 909f, arg_1)))), 0u, Struct_1(vec3<f32>(-1162f, 1f, arg_1)), vec2<u32>(50123u, ~44663u) & vec2<u32>(~u_input.b.x, 25079u)), _wgslsmith_f_op_f32(round(arg_1)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1513f, arg_1, arg_1) - vec3<f32>(1000f, 1002f, arg_1)), vec3<f32>(-1485f, arg_1, arg_1)))), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1219f, -205f, -1288f)))), ~countOneBits(u_input.b.zx)), true);
    global0 = arg_2;
    global0 = min(firstLeadingBit(abs(vec3<i32>(~2147483647i, u_input.c.x, _wgslsmith_clamp_i32(8807i, arg_2.x, u_input.c.x)))), ~arg_2);
    var var_1 = !(reverseBits(53508i) == global0.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-123f * -442f), _wgslsmith_f_op_f32(var_0.d.c.a.x + _wgslsmith_f_op_f32(min(arg_1, var_0.a.a.a.x))), _wgslsmith_f_op_f32(var_0.d.c.a.x + var_0.a.c.a.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(805f, 787f, _wgslsmith_f_op_f32(-183f - -239f)) + vec3<f32>(_wgslsmith_f_op_f32(-338f - 579f), _wgslsmith_f_op_f32(-224f - 282f), -1476f))), arg_0.x, func_4(~(min(-2147483647i, -1i) & (arg_2 ^ -26846i)), -1374f, func_2(true, firstTrailingBit(4128u >> (1u % 32u)), true, Struct_4(Struct_2(Struct_1(vec3<f32>(1000f, -1204f, -978f)), arg_1, Struct_1(vec3<f32>(-343f, 1078f, 985f)), vec2<u32>(arg_1, 63370u)), Struct_2(Struct_1(vec3<f32>(-139f, -116f, 1903f)), arg_1, Struct_1(vec3<f32>(-107f, 251f, -241f)), arg_0.wz), -1453f, Struct_2(Struct_1(vec3<f32>(1317f, 547f, 187f)), u_input.b.x, Struct_1(vec3<f32>(617f, -474f, 1551f)), arg_0.xw), true))), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), ~u_input.b.wz));
    let var_1 = ~vec2<i32>(arg_2, global0.x);
    var var_2 = var_0.a.a;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(2451f, var_2.x, -1022f)), func_4(-20342i, 1397f, vec3<i32>(-2147483647i, global0.x, 6648i)).a, select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(var_0.c.a - var_0.c.a);
    return func_4(var_1.x, var_0.c.a.x, _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(-1i, arg_2, -global0.x)) >> (vec3<u32>(0u, 20734u ^ arg_0.x, arg_1) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1) -> bool {
    global0 = vec3<i32>(~(-abs(min(global0.x, global0.x))), global0.x, _wgslsmith_mod_i32(u_input.c.x, -global0.x));
    let var_0 = false;
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(3823i, -1i, _wgslsmith_mod_i32(firstLeadingBit(abs(u_input.c.x)), u_input.c.x)), vec3<i32>(27295i, 2147483647i, 0i));
    global0 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c.x, abs(72324i), 0i) << (vec3<u32>(u_input.b.x, ~u_input.a, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(u_input.c.x), 61810i & global0.x, global0.x) & reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, 2577i), vec3<i32>(-2147483647i, global0.x, -1i))), ~max(u_input.c.x, -13168i) != 90610i), vec3<i32>(u_input.c.x, ~(~u_input.c.x), u_input.c.x));
    global0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.x, ~global0.x, u_input.c.x) ^ vec3<i32>(u_input.c.x, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 2147483647i, u_input.c.x), vec3<i32>(global0.x, 3097i, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, global0.x, u_input.c.x), vec3<i32>(10458i, u_input.c.x, global0.x)))), abs(vec3<i32>(~(-global0.x), 28447i, global0.x)), max(select(-(vec3<i32>(global0.x, u_input.c.x, u_input.c.x) | vec3<i32>(global0.x, -43666i, global0.x)), min(min(vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<i32>(global0.x, u_input.c.x, global0.x)), vec3<i32>(u_input.c.x, 0i, global0.x) << (vec3<u32>(4294967295u, 6937u, 1u) % vec3<u32>(32u))), vec3<bool>(u_input.b.x != 26192u, all(vec2<bool>(true, var_0)), true)), _wgslsmith_add_vec3_i32(-(~vec3<i32>(global0.x, -9196i, 60238i)), ~select(vec3<i32>(-1i, -8075i, global0.x), vec3<i32>(7744i, global0.x, -10995i), vec3<bool>(var_0, var_0, false)))));
    return -20203i < firstTrailingBit(global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(false, false, func_5(func_1(vec4<u32>(u_input.b.x, 38731u, 1u, 40735u) << (u_input.b % vec4<u32>(32u)), u_input.b.x | 1u, _wgslsmith_mod_i32(u_input.c.x, 23823i)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -470f);
    var var_2 = Struct_3(vec4<bool>(~u_input.c.x >= abs(~13779i), !(!func_5(Struct_1(vec3<f32>(-1226f, 862f, -200f)))), _wgslsmith_mult_i32(global0.x << (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-4957i, global0.x, -14500i), vec3<i32>(-32617i, u_input.c.x, global0.x))) >= (2147483647i & global0.x), true), func_4(0i, -1000f, vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(~u_input.c.x, global0.x), _wgslsmith_mod_i32(~u_input.c.x, 69752i))).a.xy);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(abs(var_2.b.x)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * -349f))), _wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-317f)))))))));
    var_1 = 914f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(global0.x, global0.x), global0.x, ~u_input.c.x), vec3<i32>(-1i) * -(vec3<i32>(u_input.c.x, 42645i, -27057i) >> (vec3<u32>(u_input.b.x, u_input.b.x, 34056u) % vec3<u32>(32u)))));
}

