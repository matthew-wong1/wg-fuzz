struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<f32> {
    let var_0 = countOneBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.b), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_2, arg_2, 19980u, arg_2), vec4<u32>(_wgslsmith_mult_u32(18647u, 1u), arg_1.x, u_input.e, min(1u, arg_1.x)))));
    let var_1 = false & !(false | any(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_clamp_vec4_i32(select(~(vec4<i32>(51147i, 2147483647i, u_input.d.x, u_input.d.x) << (~var_0 % vec4<u32>(32u))), vec4<i32>(u_input.c | u_input.c, _wgslsmith_div_i32(26891i, -50919i), u_input.d.x, u_input.c), vec4<bool>(all(select(vec3<bool>(false, false, var_1), vec3<bool>(var_1, true, true), true)), true, false, any(select(vec3<bool>(var_1, true, true), vec3<bool>(false, var_1, var_1), vec3<bool>(false, false, var_1))))), -vec4<i32>(2147483647i, -2147483647i, _wgslsmith_clamp_i32(2147483647i, -1i, u_input.c), -_wgslsmith_clamp_i32(25050i, -29886i, -72602i)), vec4<i32>(~abs(-u_input.d.x), -1i, -2147483647i, select(u_input.d.x, 53909i, true)));
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(var_2.www, -(~(u_input.d << (vec3<u32>(arg_1.x, var_0.x, arg_2) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(min(var_2.x, 17520i), abs(u_input.a.x), u_input.c), max(-u_input.d, vec3<i32>(u_input.a.x, u_input.c, u_input.d.x)))), -var_2.x & firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -925f))))), vec2<bool>(true, true), min(_wgslsmith_add_i32(0i, ~16327i), ~_wgslsmith_sub_i32(var_2.x, var_2.x) >> (u_input.e % 32u)));
    var_3 = Struct_1(vec3<i32>(reverseBits(~41450i), min(39734i, _wgslsmith_dot_vec3_i32(var_2.zww, var_3.a)) ^ -1i, i32(-1i) * -var_2.x), abs(18312i), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1566f))), _wgslsmith_f_op_f32(-var_3.c.x))), -418f), var_3.d, var_2.x);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, 1356f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(var_3.c, vec2<f32>(arg_0.x, 381f), var_3.d))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_3.c.x + 1528f), _wgslsmith_div_f32(-1162f, arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(round(var_3.c.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), vec2<bool>(true, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = vec2<bool>(true, var_0.d.x);
    var_0 = Struct_1(vec3<i32>(-41538i, 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -32288i, -1i) >> (u_input.b.zxx % vec3<u32>(32u)), var_0.a & arg_2.a), ~(-arg_1.a.x))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.c, u_input.b.yxz, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c)), var_1))), select(arg_1.d, var_1, arg_1.d), ~(-1i));
    var var_2 = min(~vec2<i32>(_wgslsmith_sub_i32(max(-2147483647i, -8205i), -2147483647i), 0i), arg_1.a.xz);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), arg_1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -174f)))))));
    return vec4<bool>(!(!all(vec2<bool>(arg_2.d.x, true))), var_1.x || var_0.d.x, var_0.d.x, arg_2.d.x);
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.d, -abs(u_input.c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-435f, 1000f), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1107f)), -115f), true)))), vec2<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), func_2(u_input.a.x, Struct_1(vec3<i32>(2147483647i, u_input.d.x, 2147483647i), 23968i, vec2<f32>(879f, -799f), vec2<bool>(false, true), u_input.d.x), Struct_1(vec3<i32>(2147483647i, u_input.c, u_input.d.x), u_input.c, vec2<f32>(1406f, 833f), vec2<bool>(true, false), -1i)), vec4<bool>(false, false, true, false))), false), -u_input.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<i32>(arg_0.b, _wgslsmith_mod_i32(~reverseBits(-1i), ~(-arg_0.a.x)), abs(_wgslsmith_add_i32(reverseBits(arg_1.e), select(arg_0.b, arg_1.e, arg_0.d.x)))), 44235i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-897f, -325f) - _wgslsmith_f_op_vec2_f32(-arg_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) + vec2<f32>(arg_0.c.x, -1364f)) - vec2<f32>(arg_0.c.x, arg_0.c.x)))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.c)))), func_2(arg_0.b, Struct_1(vec3<i32>(u_input.d.x << (u_input.b.x % 32u), ~2147483647i, -arg_0.b), -arg_0.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1984f, arg_0.c.x))), func_1().d, abs(arg_1.a.x)), func_1()).yy, -max(_wgslsmith_sub_i32(arg_0.e, -2147483647i), u_input.a.x));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.x, 2224f, arg_1.c.x, 513f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(531f, var_1.c.x, -1000f, var_1.c.x))), arg_0.d.x & arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(254f, -1208f, 408f, -1000f) - vec4<f32>(arg_1.c.x, -274f, var_1.c.x, 372f))))));
    return vec3<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(select(42683u, 0u, false), ~u_input.e), u_input.e)), ~(firstLeadingBit(u_input.b.x | 29020u) | (~u_input.b.x & 0u)), 95640u);
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = -(~vec3<i32>(1i, select(41426i, u_input.a.x, true), _wgslsmith_mod_i32(-2065i, -24781i)) & select(~_wgslsmith_add_vec3_i32(u_input.d, u_input.d), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -16800i), u_input.d), ~u_input.d, ~u_input.d), vec3<bool>(false, !var_0, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(326f, -992f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1316f)) * _wgslsmith_f_op_f32(-877f * -389f))))));
    let var_3 = ~_wgslsmith_clamp_i32(~(-2147483647i), 68582i | u_input.c, 2015i);
    var var_4 = func_1();
    return Struct_1(~vec3<i32>(13316i, select(var_1.x, -39759i, true), u_input.d.x << (4294967295u % 32u)) << (firstLeadingBit(countOneBits(u_input.b.zww)) % vec3<u32>(32u)), select(reverseBits(~(~1i)), -1i, true), _wgslsmith_f_op_vec2_f32(var_4.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.x, var_2.x) * vec2<f32>(-1045f, 682f))))), !var_4.d, min(~_wgslsmith_mult_i32(0i, var_1.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mod_vec3_u32(u_input.b.zwz, max(reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.e)), func_4(func_1(), func_1()))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2022f, -715f, 786f, var_0.c.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, -404f, 488f, var_0.c.x), vec4<f32>(443f, var_0.c.x, 1346f, -260f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1212f, var_0.c.x, var_0.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1303f, -107f, var_0.c.x, var_0.c.x)))) * vec4<f32>(354f, _wgslsmith_f_op_f32(-242f + _wgslsmith_f_op_f32(min(-1164f, -958f))), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1562f, var_0.c.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1095f, var_1.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_1.x, 942f, 351f) + vec4<f32>(218f, var_0.c.x, -454f, var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(524f, var_1.x, -930f, var_1.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), !var_0.d.x & var_0.d.x)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-415f, var_0.c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(round(-1000f)), var_1.x > 722f)), -441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-327f, var_0.c.x)), _wgslsmith_f_op_f32(-1561f - var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_1.x, var_1.x, var_0.c.x) * vec4<f32>(1435f, 709f, -223f, var_0.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1779f, 335f, -1317f, 255f), vec4<f32>(var_0.c.x, -648f, var_1.x, var_1.x)))))));
    var var_2 = Struct_1(~(-u_input.d), _wgslsmith_sub_i32(firstLeadingBit(-34966i), 9927i), var_0.c, !(!select(select(var_0.d, vec2<bool>(var_0.d.x, false), var_0.d.x), vec2<bool>(false, true), !var_0.d)), ~_wgslsmith_sub_i32(u_input.a.x, ~select(var_0.e, 1i, var_0.d.x)));
    let var_3 = func_5(u_input.b.yyw);
    var var_4 = true;
    var var_5 = var_3.b;
    var var_6 = vec2<u32>(~_wgslsmith_add_u32(func_4(func_5(u_input.b.xxy), Struct_1(u_input.d, var_2.b, vec2<f32>(-803f, var_0.c.x), vec2<bool>(true, var_3.d.x), var_3.e)).x, func_4(var_3, func_1()).x), 46818u);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_6.x, u_input.e, 4294967295u), u_input.b.yxz), u_input.e | 1u, 1u) | 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(~0u, var_6.x), 1u)), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_1.wz, _wgslsmith_sub_vec3_u32(vec3<u32>(var_6.x, 4294967295u, 5034u), _wgslsmith_sub_vec3_u32(u_input.b.zzy, u_input.b.yyz)), ~_wgslsmith_add_u32(0u, 11451u))).x, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.c, u_input.b.wxw, u_input.e)) + _wgslsmith_f_op_vec2_f32(-var_1.zz)), abs(vec3<u32>(var_6.x, var_6.x, var_6.x)), max(3437u, var_6.x))).x, var_3.c.x), var_0.a.x, vec4<i32>(33284i, i32(-1i) * -1118i, func_5(reverseBits(max(u_input.b.wzw, vec3<u32>(var_6.x, var_6.x, u_input.e)))).a.x, u_input.a.x), var_2.a.xx);
}

