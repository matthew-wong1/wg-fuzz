struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = 1000f;
    var var_1 = arg_1;
    var_1 = Struct_3(Struct_1(65520i, _wgslsmith_f_op_vec3_f32(arg_1.e.e.b + arg_1.a.b)), arg_1.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, arg_1.d.x, var_1.a.b.x))))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1354f)))), 825f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1190f) * _wgslsmith_f_op_f32(-1000f - 1456f)))), var_1.e);
    var var_2 = arg_1.e.b.zz;
    let var_3 = any(vec2<bool>(u_input.c.x <= u_input.e.x, true)) & any(select(select(select(vec3<bool>(arg_1.e.c, true, arg_1.e.c), vec3<bool>(true, var_1.e.c, true), vec3<bool>(false, false, false)), !vec3<bool>(var_1.e.c, arg_1.e.c, arg_1.e.c), select(vec3<bool>(false, var_1.e.c, var_1.e.c), vec3<bool>(false, arg_1.e.c, arg_1.e.c), vec3<bool>(var_1.e.c, arg_1.e.c, arg_1.e.c))), !(!vec3<bool>(true, true, arg_1.e.c)), !(!vec3<bool>(var_1.e.c, true, true))));
    return ~max(1451u, 0u) << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 13802u), arg_1.e.b.xx), u_input.a.xz), vec2<u32>(reverseBits(0u), 0u << ((var_2.x >> (arg_2 % 32u)) % 32u))) % 32u);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = u_input.d;
    var var_1 = abs(vec3<u32>(countOneBits(1u), abs(50444u), ~(~abs(var_0))));
    var var_2 = Struct_2(arg_1, ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, arg_2, 1u) & vec3<u32>(var_1.x, 67617u, 4294967295u), vec3<u32>(0u, u_input.d, 46842u) ^ u_input.a.wxw) << (vec3<u32>(_wgslsmith_div_u32(u_input.a.x & u_input.d, func_3(u_input.e.x, Struct_3(Struct_1(arg_0, arg_1.b), vec3<f32>(arg_3.x, arg_1.b.x, -1000f), arg_1.b, vec4<f32>(106f, -179f, arg_1.b.x, arg_3.x), Struct_2(Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, 180f, arg_3.x)), vec3<u32>(u_input.d, arg_2, var_1.x), true, 0u, Struct_1(arg_0, vec3<f32>(arg_3.x, -1374f, arg_1.b.x)))), arg_2)), _wgslsmith_dot_vec2_u32(vec2<u32>(47095u, arg_2), vec2<u32>(var_1.x, var_1.x)) << (120530u % 32u), ~(~53178u)) % vec3<u32>(32u)), any(vec3<bool>(true, true, true)), ~(~63877u), Struct_1(countOneBits((0i | u_input.e.x) ^ arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3, _wgslsmith_f_op_vec3_f32(-arg_1.b), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(959f, arg_3.x, arg_3.x) - vec3<f32>(arg_3.x, 462f, 809f)))));
    var_1 = _wgslsmith_sub_vec3_u32(countOneBits(~abs(vec3<u32>(arg_2, 1u, 0u))), vec3<u32>(var_0, ~(~func_3(u_input.c.x, Struct_3(Struct_1(arg_1.a, var_2.e.b), vec3<f32>(arg_3.x, 508f, -306f), vec3<f32>(arg_1.b.x, var_2.e.b.x, 2882f), vec4<f32>(-1610f, -1352f, -425f, 1000f), Struct_2(Struct_1(var_2.e.a, arg_1.b), vec3<u32>(54414u, 4294967295u, 1u), var_2.c, 90413u, var_2.a)), 0u)), ~4294967295u));
    var var_3 = u_input.b.x;
    return !select(!select(!vec4<bool>(var_2.c, true, true, true), select(vec4<bool>(var_2.c, var_2.c, false, false), vec4<bool>(true, var_2.c, false, var_2.c), var_2.c), select(vec4<bool>(var_2.c, false, true, true), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, true, false, var_2.c))), vec4<bool>(all(!vec4<bool>(false, var_2.c, var_2.c, true)), true, true, false), !vec4<bool>(any(vec4<bool>(var_2.c, false, var_2.c, false)), var_2.c, var_2.c, var_2.c));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(520f, -454f, -115f) - vec3<f32>(-2380f, -328f, -275f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1218f, -367f, -949f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -667f, -918f) - vec3<f32>(-1095f, -298f, -269f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, 422f, 1625f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-507f, -180f, 1482f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2554f, -104f, -994f) - vec3<f32>(3313f, 1333f, 223f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1657f, 138f, -354f) + vec3<f32>(447f, 1306f, 467f)), vec3<bool>(false, false, arg_1.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-854f, 195f, -599f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-1256f + _wgslsmith_div_f32(351f, 1366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) * _wgslsmith_f_op_f32(f32(-1f) * -1162f)), _wgslsmith_f_op_f32(f32(-1f) * -2099f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, -1571f, -1143f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2323f, -995f, 298f, 430f)))), Struct_2(Struct_1(u_input.e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1039f, 492f, 1460f))))), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(75288u, u_input.d, u_input.d) | vec3<u32>(u_input.d, 1u, 21782u), _wgslsmith_mult_vec3_u32(u_input.a.xzy, vec3<u32>(0u, 100934u, u_input.a.x)))), !((13559u | u_input.d) < _wgslsmith_sub_u32(u_input.d, u_input.a.x)), (select(u_input.a.x, 1u, false) | ~0u) ^ _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 52817u), Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-428f, 2182f, -467f)))))));
    let var_1 = select(arg_3.zzw, !select(vec3<bool>(any(arg_3), false, true), !arg_1.yyx, true), any(!arg_3.xx));
    var_0 = Struct_3(Struct_1(-2147483647i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-973f, -1041f)), _wgslsmith_f_op_f32(-var_0.c.x)), var_0.b.x, 924f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.b.x)) - _wgslsmith_f_op_f32(ceil(1368f))), _wgslsmith_f_op_f32(var_0.e.a.b.x + _wgslsmith_f_op_f32(select(-1005f, -446f, true))), var_0.a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(524f, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(trunc(-2183f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(_wgslsmith_f_op_f32(454f * -123f), _wgslsmith_f_op_f32(var_0.b.x - var_0.d.x), var_0.b.x), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.e.a.b)) * var_0.a.b)), vec4<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.e.a.b.x), var_0.d.x, -2016f), Struct_2(var_0.a, ~(~vec3<u32>(35984u, var_0.e.b.x, 1u) ^ reverseBits(var_0.e.b)), true, select(~4294967295u, reverseBits(u_input.a.x), !(var_0.e.d != 4294967295u)), Struct_1(abs(38111i), vec3<f32>(700f, _wgslsmith_f_op_f32(-288f * 950f), _wgslsmith_f_op_f32(-var_0.a.b.x)))));
    let var_2 = arg_2.x;
    var_0 = Struct_3(Struct_1(~2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.e.a.b.x, var_0.e.a.b.x, var_0.a.b.x), var_0.a.b) * var_0.c) * var_0.a.b)), _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(228f, var_0.a.b.x, 910f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, var_0.c.x, var_0.a.b.x) - vec3<f32>(-1130f, var_0.c.x, var_0.c.x)))))), vec3<f32>(-715f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(abs(996f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1961f, -729f, -878f, -160f), var_0.d, arg_3)), _wgslsmith_f_op_vec4_f32(abs(var_0.d))), var_0.d, u_input.d != var_0.e.d))), var_0.e);
    return var_0.a;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_3(func_4(~u_input.b.x, select(!vec4<bool>(arg_0, true, arg_0, arg_0), select(!vec4<bool>(false, true, true, arg_0), func_2(u_input.b.x, Struct_1(u_input.c.x, vec3<f32>(1000f, -844f, -1019f)), 1u, vec3<f32>(864f, -278f, 645f)), arg_0), arg_0), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.c.x, -17879i, -2147483647i))), select(!vec4<bool>(false, true, false, arg_0), !(!vec4<bool>(arg_0, arg_0, false, arg_0)), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-813f, _wgslsmith_f_op_f32(min(107f, -787f)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)), -343f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1061f)) - 577f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f + -497f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -935f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(func_4(-2147483647i, vec4<bool>(all(vec2<bool>(arg_0, arg_0)), -1i >= u_input.c.x, all(vec2<bool>(false, false)), !arg_0), max(-vec4<i32>(1i, u_input.e.x, u_input.c.x, 26741i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.c.x)), !vec4<bool>(arg_0, arg_0, true, arg_0)), vec3<u32>(~1u, 2811u, ~31595u), all(!(!vec3<bool>(true, arg_0, true))), u_input.a.x, Struct_1(~abs(2147483647i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1355f, 238f, 1522f))))));
    var_0 = Struct_3(func_4(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(func_4(var_0.a.a, vec4<bool>(var_0.e.c, true, arg_0, arg_0), vec4<i32>(0i, var_0.a.a, u_input.e.x, -1i), vec4<bool>(true, arg_0, arg_0, arg_0)).a, firstTrailingBit(-2147483647i), -2147483647i)), !vec4<bool>(true, select(false, arg_0, var_0.e.c), var_0.a.b.x < -258f, any(vec2<bool>(false, arg_0))), countOneBits(-vec4<i32>(var_0.a.a, -68354i, -28207i, 1i)) >> (abs(u_input.a) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0, arg_0, false, var_0.e.c), false), func_2(-1i, var_0.e.a, u_input.a.x, vec3<f32>(-201f, -916f, 636f)), any(vec4<bool>(false, arg_0, false, var_0.e.c))), var_0.e.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(-var_0.d.wwx))))), var_0.e.a.b, false)), vec3<f32>(_wgslsmith_div_f32(-1156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1415f + var_0.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1439f))), var_0.b.x, 598f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(881f)), _wgslsmith_div_f32(1193f, -1198f), _wgslsmith_f_op_f32(f32(-1f) * -517f))))), Struct_2(func_4(_wgslsmith_sub_i32(u_input.e.x, 0i), func_2(8146i, var_0.e.a, ~u_input.d, _wgslsmith_f_op_vec3_f32(-var_0.a.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, var_0.a.a, 50546i), vec4<i32>(var_0.a.a, u_input.e.x, var_0.a.a, u_input.b.x)), select(!vec4<bool>(false, var_0.e.c, var_0.e.c, arg_0), vec4<bool>(false, arg_0, false, var_0.e.c), vec4<bool>(true, false, true, arg_0))), (abs(u_input.a.yxy) >> ((vec3<u32>(var_0.e.d, var_0.e.b.x, 0u) ^ u_input.a.zzz) % vec3<u32>(32u))) >> (u_input.a.zwy % vec3<u32>(32u)), var_0.b.x == _wgslsmith_f_op_f32(-var_0.b.x), var_0.e.b.x, func_4(~_wgslsmith_mod_i32(u_input.e.x, -1i), select(!vec4<bool>(true, false, false, arg_0), func_2(var_0.a.a, var_0.a, u_input.d, vec3<f32>(var_0.e.e.b.x, var_0.d.x, -582f)), false), ~vec4<i32>(var_0.e.e.a, 39300i, var_0.a.a, u_input.b.x) | (vec4<i32>(var_0.a.a, u_input.c.x, u_input.c.x, var_0.e.a.a) ^ vec4<i32>(2147483647i, 5461i, 2147483647i, var_0.a.a)), select(vec4<bool>(false, arg_0, true, false), !vec4<bool>(var_0.e.c, true, true, arg_0), vec4<bool>(arg_0, false, false, var_0.e.c)))));
    var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, var_0.e.e.a), ~vec3<i32>(u_input.c.x, 2147483647i, u_input.e.x), vec3<i32>(var_0.a.a, -2147483647i, -1i)), vec3<i32>(u_input.c.x & var_0.e.a.a, -1i, var_0.e.e.a)), var_0.d.zyx), var_0.d.wzx, vec3<f32>(-693f, var_0.c.x, -1477f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.x, 989f), 115f)), 788f), 1030f, var_0.c.x, var_0.e.e.b.x), Struct_2(func_4(20382i, func_2(0i & var_0.a.a, func_4(var_0.a.a, vec4<bool>(arg_0, true, arg_0, var_0.e.c), vec4<i32>(var_0.e.e.a, 16457i, -1i, 25185i), vec4<bool>(true, var_0.e.c, arg_0, true)), 25937u, _wgslsmith_f_op_vec3_f32(abs(var_0.d.wyz))), _wgslsmith_div_vec4_i32(vec4<i32>(-1938i, var_0.e.e.a, var_0.a.a, var_0.a.a), vec4<i32>(var_0.e.e.a, u_input.c.x, u_input.b.x, u_input.b.x)), func_2(2147483647i, var_0.e.e, 0u, _wgslsmith_div_vec3_f32(vec3<f32>(273f, var_0.e.e.b.x, var_0.c.x), var_0.e.a.b))), firstLeadingBit(vec3<u32>(~u_input.d, u_input.d, _wgslsmith_mod_u32(4294967295u, var_0.e.b.x))), !arg_0, _wgslsmith_dot_vec3_u32(reverseBits(var_0.e.b >> (var_0.e.b % vec3<u32>(32u))), vec3<u32>(29748u, var_0.e.d << (42362u % 32u), var_0.e.b.x)), var_0.e.a));
    var_0 = Struct_3(var_0.a, var_0.e.a.b, var_0.a.b, var_0.d, var_0.e);
    let var_1 = Struct_2(Struct_1(-1593i, var_0.a.b), max(max(vec3<u32>(~var_0.e.b.x, countOneBits(1u), _wgslsmith_mult_u32(39170u, var_0.e.b.x)), vec3<u32>(u_input.a.x, ~4294967295u, 23101u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(~u_input.a.zyx), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.d), ~var_0.e.d, ~var_0.e.b.x))), false, firstTrailingBit(4294967295u >> (var_0.e.d % 32u)), var_0.e.e);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(firstLeadingBit(u_input.b.x) & -7907i, u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(475f, -1106f, -1265f))))))), vec3<u32>(~20955u, 6777u, abs(u_input.d ^ ~0u)), all(vec2<bool>(!func_1(true), true)), ~_wgslsmith_dot_vec2_u32(~u_input.a.yw, _wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(u_input.d, u_input.d))), Struct_1(~2147483647i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f * -1746f) + -609f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, -1479f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = func_4(var_0.a.a, func_2(u_input.c.x, var_0.a, 1u, _wgslsmith_f_op_vec3_f32(-func_4(var_0.a.a & -21107i, vec4<bool>(true, var_0.c, false, false), -vec4<i32>(-22624i, -18455i, 0i, 79212i), select(vec4<bool>(var_0.c, false, false, false), vec4<bool>(var_0.c, true, true, var_0.c), var_0.c)).b)), vec4<i32>(~(abs(-3497i) >> (_wgslsmith_mod_u32(1u, 33181u) % 32u)), ~(_wgslsmith_add_i32(var_0.a.a, 33141i) & -1i), var_0.e.a, 22499i), !vec4<bool>(any(vec2<bool>(var_0.c, false)), any(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, false, var_0.c))), var_0.c, -u_input.b.x == _wgslsmith_mod_i32(var_0.a.a, 0i)));
    var var_2 = var_0.e;
    var var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    var_2 = var_0.e;
    var_0 = Struct_2(Struct_1(firstLeadingBit(2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_2.b, var_1.b))) * var_0.e.b)), u_input.a.wzy, func_2(firstTrailingBit(_wgslsmith_clamp_i32(-36775i, 12290i, var_2.a)), func_4(i32(-1i) * -17436i, vec4<bool>(true, true, true, true), -(~vec4<i32>(-1i, 2147483647i, var_2.a, 18543i)), vec4<bool>(false, var_0.c, false, var_0.c)), _wgslsmith_sub_u32(58706u, ~var_0.b.x >> (firstLeadingBit(1u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.x, 789f, var_0.e.b.x))), vec3<f32>(var_0.e.b.x, 1000f, var_1.b.x), all(vec4<bool>(false, true, true, var_0.c)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_1.b)), var_2.b, true)))).x, (firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, u_input.a.x))) | var_0.d) & _wgslsmith_mult_u32(_wgslsmith_add_u32(1u << (var_0.d % 32u), u_input.d >> (var_0.d % 32u)), 18135u), func_4(-(~abs(var_2.a)), select(!func_2(-2147483647i, var_0.a, u_input.a.x, var_2.b), !func_2(-31443i, Struct_1(u_input.e.x, var_2.b), u_input.d, var_2.b), select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), !vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(var_0.c, var_0.c, var_0.c, true))), max(abs(-vec4<i32>(51814i, var_2.a, u_input.e.x, u_input.c.x)), -(~vec4<i32>(-31925i, var_1.a, 38657i, var_1.a))), select(func_2(var_1.a, func_4(var_2.a, vec4<bool>(true, false, false, false), vec4<i32>(50612i, 47504i, var_0.e.a, -23157i), vec4<bool>(var_0.c, var_0.c, var_0.c, true)), firstLeadingBit(u_input.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_2.b.x, var_1.b.x) * vec3<f32>(323f, var_2.b.x, var_1.b.x))), vec4<bool>(87170u != var_0.d, true, var_0.c, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.b), vec4<i32>(~func_4(i32(-1i) * -3930i, !vec4<bool>(var_0.c, true, false, var_0.c), countOneBits(vec4<i32>(-11350i, -10452i, 2147483647i, -25413i)), !vec4<bool>(var_0.c, true, true, var_0.c)).a, max(1i, reverseBits(_wgslsmith_mod_i32(var_0.a.a, var_1.a))), -10284i, var_1.a));
}

