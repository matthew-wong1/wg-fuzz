struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = (arg_2.c <= (_wgslsmith_dot_vec2_i32(min(vec2<i32>(-67128i, 11621i), vec2<i32>(25758i, var_0.a.x)), arg_2.a) & arg_2.c)) && !(!(!var_0.e));
    let var_2 = _wgslsmith_clamp_vec2_u32(select(select(~vec2<u32>(u_input.a.x, u_input.a.x) >> (reverseBits(vec2<u32>(14115u, arg_1)) % vec2<u32>(32u)), vec2<u32>(54007u, 0u) & _wgslsmith_div_vec2_u32(vec2<u32>(30026u, 4294967295u), u_input.a.yw), false), ~(~(~vec2<u32>(7814u, 1u))), select(select(1535u >= arg_1, any(vec4<bool>(false, arg_2.e, false, false)), true & var_1), select(!var_1, var_0.e, true), arg_2.e)), u_input.a.zx, vec2<u32>(u_input.a.x, abs(arg_1)) | vec2<u32>(arg_1, u_input.a.x));
    let var_3 = Struct_2(arg_2, ~(~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, arg_1, var_2.x, 43897u) ^ u_input.a)), (~select(vec3<u32>(arg_1, var_2.x, 1u), u_input.a.yyw, vec3<bool>(var_1, arg_2.e, var_1)) & ~u_input.a.zyy) ^ u_input.a.ywz, Struct_1(max(firstTrailingBit(countOneBits(vec2<i32>(2987i, u_input.b))), vec2<i32>(-21319i, 7418i)), var_0.b, u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - -1634f), arg_0.x, _wgslsmith_f_op_f32(1202f - arg_0.x), arg_2.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) + var_0.d)), any(select(select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(arg_2.e, var_0.e), vec2<bool>(var_1, false)), !vec2<bool>(arg_2.e, false), vec2<bool>(true, true)))));
    let var_4 = var_3.a;
    return _wgslsmith_add_i32(~(firstTrailingBit(1i) | ~12701i), arg_2.a.x) << ((var_3.c.x & ~(~22217u)) % 32u);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = vec2<u32>(u_input.a.x, ~u_input.a.x) & ~_wgslsmith_clamp_vec2_u32(min(u_input.a.wy, countOneBits(vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(u_input.a.x, u_input.a.x), firstTrailingBit(abs(vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_1 = Struct_2(arg_0, vec4<u32>(u_input.a.x, ~(~(~u_input.a.x)), 15935u, _wgslsmith_clamp_u32(1157u, 72444u, countOneBits(firstLeadingBit(1u)))), ~(~_wgslsmith_mod_vec3_u32(u_input.a.ywx & vec3<u32>(19292u, var_0.x, var_0.x), _wgslsmith_mult_vec3_u32(u_input.a.www, vec3<u32>(var_0.x, 39312u, 0u)))), arg_0);
    var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b, arg_0.a.x >> (var_1.c.x % 32u)), select(var_1.d.a, vec2<i32>(var_1.a.b, var_1.a.b), true)), -min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(1i, arg_0.c, 1i)), u_input.b & arg_0.c), max(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(459f)), _wgslsmith_f_op_f32(-arg_0.d.x), 1317f, -1684f), var_1.d.d)), all(vec2<bool>(true, true))), countOneBits(var_1.b), u_input.a.ywx, var_1.a);
    let var_2 = -383f;
    let var_3 = all(select(!vec2<bool>(all(vec4<bool>(var_1.d.e, arg_0.e, false, true)), arg_0.e), vec2<bool>(arg_0.e, 2147483647i < (u_input.b & 33681i)), var_1.a.e));
    return firstLeadingBit(u_input.a.xyz);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(arg_3.wz, abs(u_input.b), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(646f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -1950f), _wgslsmith_f_op_f32(-1949f + 1595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - arg_0)), -1743f), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true))), u_input.a, vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.xy << (u_input.a.wz % vec2<u32>(32u)), ~vec2<u32>(62435u, 1u)), arg_2.x, 1230u) ^ abs(~(vec3<u32>(arg_2.x, arg_1.a.x, arg_1.a.x) << (vec3<u32>(1u, arg_2.x, arg_1.a.x) % vec3<u32>(32u)))), Struct_1(vec2<i32>(34059i, arg_3.x), -2147483647i, u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -653f, 667f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, arg_0, 464f, -996f))))), true));
    var_0 = Struct_2(Struct_1(~firstLeadingBit(~vec2<i32>(u_input.b, arg_3.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -6865i), arg_3.xw), 2147483647i) ^ ((i32(-1i) * -26201i) & (-9787i | u_input.b)), _wgslsmith_div_i32(-44618i, firstLeadingBit(countOneBits(arg_3.x))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -254f))), 129f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_u32(_wgslsmith_sub_u32(1548u, 0u), var_0.c.x | var_0.c.x) < 17027u), abs(u_input.a), firstTrailingBit(~_wgslsmith_div_vec3_u32(abs(u_input.a.zxy), vec3<u32>(18789u, 34872u, var_0.c.x))), Struct_1(abs(~var_0.d.a), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, -var_0.d.c), vec2<i32>(u_input.b, ~0i)), arg_3.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0), var_0.d.d.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-735f, -398f, var_0.d.d.x, arg_0) * var_0.a.d), var_0.d.d))), false));
    var var_1 = ~_wgslsmith_div_i32(~_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, u_input.b, var_0.d.c), vec3<i32>(var_0.a.a.x, 2147483647i, -30660i))), var_0.a.b);
    var_1 = min(0i, _wgslsmith_mod_i32(~(-_wgslsmith_mod_i32(var_0.a.a.x, -1i)), abs(-_wgslsmith_mult_i32(u_input.b, arg_3.x))));
    var_0 = Struct_2(var_0.d, reverseBits(u_input.a), var_0.b.wzw, var_0.a);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, var_0.a.d.x, 2053f, var_0.d.d.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, -271f, -1686f, var_0.d.d.x)) - var_0.a.d)))));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = var_0;
    var_1 = -2147483647i;
    return Struct_2(arg_2, ~u_input.a, u_input.a.zzz, Struct_1(-arg_3.a, _wgslsmith_mod_i32(abs(min(arg_3.a.x, -6181i)), ~2147483647i), _wgslsmith_add_i32(max(_wgslsmith_sub_i32(-8372i, u_input.b), u_input.b), _wgslsmith_mult_i32(abs(u_input.b), _wgslsmith_mult_i32(arg_3.a.x, arg_3.c))), _wgslsmith_f_op_vec4_f32(select(arg_2.d, vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.d.x, 931f)), _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_div_f32(arg_3.d.x, arg_2.d.x), _wgslsmith_f_op_f32(-arg_3.d.x)), select(vec4<bool>(arg_0, arg_0, true, arg_2.e), arg_1, true))), true));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(260f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-253f)) + _wgslsmith_f_op_f32(1000f - 1692f)) - 487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(-1226f, -337f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(210f, _wgslsmith_f_op_f32(-1522f + 2437f), 1382f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, 713f, 665f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, 1318f, false)), 1000f, -259f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(442f, 1020f, 1273f) - vec3<f32>(-581f, -1265f, 1099f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1990f, 2769f, -928f)))))));
    let var_1 = func_5(all(vec2<bool>((u_input.b & u_input.b) <= u_input.b, true)), vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true, select(u_input.a.x, _wgslsmith_sub_u32(42107u, 7056u), true) > ~1u, -max(arg_0, 59510i) != firstTrailingBit(1i)), Struct_1(vec2<i32>(~(~(-871i)), u_input.b), _wgslsmith_add_i32(~func_2(vec2<f32>(var_0.x, var_0.x), 79284u, Struct_1(vec2<i32>(u_input.b, u_input.b), arg_0, 42085i, vec4<f32>(var_0.x, var_0.x, var_0.x, -1215f), false)), ~select(-2147483647i, 0i, true)), i32(-1i) * -(arg_0 << (49974u % 32u)), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)), all(vec3<bool>(true, true, false)))), Struct_3(vec3<u32>(1u, u_input.a.x, 79915u)), func_3(Struct_1(vec2<i32>(arg_0, arg_0), 44851i, 2673i, vec4<f32>(-440f, -104f, 1570f, -1576f), false)) & ~u_input.a.yxw, abs(vec4<i32>(-12705i, arg_0, -21908i, -17569i) & vec4<i32>(u_input.b, u_input.b, arg_0, u_input.b)))), false), Struct_1(~vec2<i32>(-35240i, 0i), 19178i, -25994i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), !all(vec3<bool>(true, true, true))));
    let var_2 = ~abs(~abs(u_input.a)) ^ vec4<u32>(3684u, ~_wgslsmith_mult_u32(39996u, u_input.a.x) ^ 19875u, 1u, u_input.a.x);
    let var_3 = var_2.zxw & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), vec3<u32>(abs(2010u), ~u_input.a.x | ~u_input.a.x, _wgslsmith_mult_u32(1u, ~4294967295u)));
    let var_4 = _wgslsmith_mult_u32(func_5(true, !select(vec4<bool>(var_1.d.e, true, var_1.a.e, true), !vec4<bool>(var_1.a.e, var_1.d.e, var_1.a.e, true), true), Struct_1(_wgslsmith_div_vec2_i32(var_1.d.a, vec2<i32>(var_1.a.b, 57709i)), arg_0, u_input.b, _wgslsmith_f_op_vec4_f32(-var_1.d.d), var_1.d.a.x > -1i), func_5(var_1.d.e, !select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.d.e, false, false, false), var_1.a.e), Struct_1(vec2<i32>(var_1.a.b, -1i) ^ var_1.a.a, -2147483647i, arg_0, vec4<f32>(var_1.d.d.x, var_0.x, -1092f, 1000f), !var_1.d.e), Struct_1(-vec2<i32>(-2147483647i, u_input.b), u_input.b & u_input.b, u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.d.x, var_0.x, 342f, var_0.x) + var_1.d.d), any(vec4<bool>(var_1.a.e, var_1.a.e, false, var_1.a.e)))).a).b.x, ~16087u);
    return var_1.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = ~65261u;
    var var_1 = Struct_3(~(~(~(~arg_1.c))));
    let var_2 = u_input.b;
    var_1 = Struct_3(var_1.a);
    let var_3 = max(firstLeadingBit(vec3<i32>(arg_1.a.a.x, var_2, countOneBits(62540i))), ~(vec3<i32>(-1i) * -vec3<i32>(-5411i, -26497i, arg_1.a.b)));
    return StorageBuffer(1u, _wgslsmith_add_vec3_u32(min(min(u_input.a.wxz, u_input.a.wwx), vec3<u32>(16736u, 10096u, var_1.a.x)), vec3<u32>(var_0, 1u, ~1u)) | vec3<u32>(_wgslsmith_clamp_u32(~var_0, 61668u, ~0u), func_3(arg_0).x, u_input.a.x), vec3<i32>(i32(-1i) * -1i, 0i, var_2), -436f, _wgslsmith_mult_i32(-33918i, 13162i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_3(vec3<u32>(u_input.a.x, u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.wxw, vec3<u32>(u_input.a.x, 52866u, 49057u)), var_0.zxy)));
    let var_2 = max(4294967295u, var_1.a.x);
    let x = u_input.a;
    s_output = func_6(func_1(1i), func_5(any(vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, 2147483647i == u_input.b, var_0.x > 22578u), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, u_input.b)), -vec2<i32>(-2147483647i, -15116i)), func_5(true, vec4<bool>(true, true, true, true), func_5(false, vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(u_input.b, -46017i), u_input.b, 2147483647i, vec4<f32>(511f, 753f, -1179f, 1087f), false), Struct_1(vec2<i32>(-33042i, u_input.b), -13277i, 1i, vec4<f32>(-1000f, 770f, -1851f, 871f), false)).a, Struct_1(vec2<i32>(-2147483647i, u_input.b), 1i, u_input.b, vec4<f32>(-1000f, 923f, -600f, -2414f), false)).d.a.x, select(u_input.b, select(52325i, 16347i, false), true), vec4<f32>(1f, 1f, 1f, 1f), false), Struct_1(abs(vec2<i32>(0i, u_input.b)), _wgslsmith_mult_i32(-1i, u_input.b ^ -10867i), func_5(var_2 < 1u, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), func_5(false, vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(-1i, u_input.b), u_input.b, 5810i, vec4<f32>(1645f, 380f, 1127f, 1275f), true), Struct_1(vec2<i32>(-2147483647i, 1i), u_input.b, 67130i, vec4<f32>(-858f, -1000f, -289f, 2677f), true)).d, func_5(false, vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(-2147483647i, u_input.b), -26398i, 47113i, vec4<f32>(-1069f, -471f, 345f, -766f), false), Struct_1(vec2<i32>(u_input.b, u_input.b), -2939i, -69796i, vec4<f32>(110f, 1000f, -1350f, 539f), true)).d).a.a.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(752f, 1121f, -418f, -814f), vec4<f32>(-481f, 1075f, -1233f, 633f))), false || func_5(true, vec4<bool>(true, true, false, true), Struct_1(vec2<i32>(u_input.b, u_input.b), 1465i, u_input.b, vec4<f32>(-504f, 489f, -724f, 1856f), false), Struct_1(vec2<i32>(-2147483647i, u_input.b), u_input.b, u_input.b, vec4<f32>(1046f, 1724f, 248f, 1344f), true)).d.e)));
}

