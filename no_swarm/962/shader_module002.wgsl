struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a), u_input.a)), min(14749i, 2147483647i), -countOneBits(-2147483647i), -2147483647i) << (_wgslsmith_mod_vec4_u32(countOneBits(~max(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, 4294967295u, arg_1.x, 4294967295u))), _wgslsmith_add_vec4_u32(vec4<u32>(49582u, ~4294967295u, firstTrailingBit(arg_1.x), countOneBits(27259u)), ~select(vec4<u32>(arg_1.x, 1u, arg_1.x, 96230u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_0), vec4<bool>(true, true, false, true)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-415f, -1000f, -1189f), vec3<f32>(-655f, -1092f, -778f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2202f, 362f, -1049f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1343f), -453f), 364f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(726f)), _wgslsmith_f_op_f32(-603f - 160f)))))));
    let var_2 = Struct_4(~(~(_wgslsmith_sub_i32(var_0.x, 30010i) << (~arg_1.x % 32u))), Struct_3(reverseBits(1262i) != var_0.x, var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x)), Struct_2(Struct_1(u_input.a.x, var_1.yx, -1292f, -290f, all(vec3<bool>(false, false, false))), var_0.x)), Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, -179f))))), -535f, _wgslsmith_f_op_f32(342f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x))), true));
    let var_3 = var_2.c;
    let var_4 = any(!select(vec3<bool>(!var_3.e, !var_3.e, true), vec3<bool>(all(vec3<bool>(true, var_2.b.a, true)), var_3.e, any(vec4<bool>(true, var_2.b.a, var_2.c.e, true))), !(!var_3.e)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.x))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(0u, vec2<u32>(1u, ~_wgslsmith_sub_u32(4294967295u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)))));
    let var_1 = Struct_4(-25453i, Struct_3(false, _wgslsmith_f_op_f32(1278f * -156f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -281f), Struct_2(Struct_1(9467i, vec2<f32>(611f, -649f), _wgslsmith_f_op_f32(abs(854f)), _wgslsmith_f_op_f32(f32(-1f) * -1164f), any(vec4<bool>(false, true, true, true))), 0i)), Struct_1(~_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, -37252i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, -699f)), vec2<f32>(605f, 130f), u_input.a.x >= 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, -274f)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))), -478f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(4294967295u, vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(round(1049f))) - 213f), true));
    var var_2 = Struct_3(any(vec2<bool>(true, !var_1.c.e)), _wgslsmith_f_op_f32(var_1.b.b * var_1.c.d), var_1.b.c, Struct_2(Struct_1(max(var_1.b.d.a.a, u_input.a.x), vec2<f32>(448f, -265f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.d - var_1.c.d), var_1.b.d.a.c), false), 1i));
    let var_3 = firstTrailingBit(_wgslsmith_mod_u32(13095u, 1u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.b.x)));
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_5 {
    var var_0 = Struct_3(all(select(select(vec4<bool>(false, arg_1.b.a, false, false), !vec4<bool>(true, false, true, arg_1.b.d.a.e), true), vec4<bool>(true, !arg_1.b.d.a.e, all(vec2<bool>(arg_1.b.d.a.e, arg_1.b.d.a.e)), all(vec2<bool>(arg_1.c.e, arg_1.c.e))), false)), arg_1.b.c.x, func_2().b.d.a.b, arg_1.b.d);
    return Struct_5(!(!select(vec2<bool>(false, false), vec2<bool>(false, arg_1.c.e), var_0.a && var_0.a)), select(-vec4<i32>(-11670i, _wgslsmith_add_i32(23151i, var_0.d.a.a), -1i, 0i), _wgslsmith_add_vec4_i32(~(~vec4<i32>(2147483647i, var_0.d.a.a, var_0.d.a.a, u_input.a.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-38003i, arg_1.a, 44495i, u_input.a.x), vec4<i32>(2942i, u_input.a.x, 1i, var_0.d.b))), true), arg_1);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(1306f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-148f, 334f)))), _wgslsmith_f_op_f32(f32(-1f) * -289f)), func_2());
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.c.b.d.a.c * var_0.c.b.d.a.d), 628f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.b.d.a.b * var_0.c.b.d.a.b)))), func_4(vec2<f32>(var_0.c.b.d.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.b.b)) - -964f)), func_4(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.b.c.x), func_4(var_0.c.b.c, var_0.c).c.b.b), Struct_4(-14172i, func_4(vec2<f32>(var_0.c.b.d.a.c, 1227f), var_0.c).c.b, func_4(vec2<f32>(-1603f, var_0.c.b.c.x), var_0.c).c.b.d.a)).c).c).c.b.d.a;
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.b)), var_0.c);
    var var_2 = Struct_3(var_0.a.x, var_1.b.x, _wgslsmith_f_op_vec2_f32(-func_2().b.c), func_4(vec2<f32>(var_1.c, -863f), var_0.c).c.b.d);
    var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_div_vec2_f32(var_0.c.c.b, vec2<f32>(-138f, -1858f))))), Struct_4(var_2.d.b, func_4(var_2.c, var_0.c).c.b, func_4(var_1.b, func_2()).c.c)).c.b;
    return func_2().c;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * arg_2))), arg_1.b, !select(func_4(vec2<f32>(765f, arg_2), Struct_4(0i, Struct_3(arg_0.x, -417f, vec2<f32>(arg_2, -1164f), Struct_2(arg_1, u_input.a.x)), arg_1)).a, !vec2<bool>(true, arg_0.x), arg_1.e))), func_4(vec2<f32>(914f, arg_2), func_4(vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), arg_2), func_2()).c).c).c.b;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-712f, arg_1.b.x) - var_0.c)))) - _wgslsmith_f_op_vec2_f32(select(var_0.d.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) - _wgslsmith_f_op_vec2_f32(-var_0.d.a.b)), false))), Struct_4(_wgslsmith_dot_vec2_i32(~u_input.a.zz >> (abs(vec2<u32>(1u, 13268u)) % vec2<u32>(32u)), u_input.a.xz), Struct_3(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.a.b.x, arg_2))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-315f, 354f), vec2<f32>(arg_2, arg_1.d))), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, arg_2), vec2<f32>(var_0.b, -394f)), Struct_4(3535i, Struct_3(false, 523f, vec2<f32>(var_0.d.a.d, var_0.d.a.c), var_0.d), Struct_1(-1i, arg_1.b, -664f, -2315f, arg_1.e))).c.b.d), Struct_1(max(-31829i, arg_1.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_0.c)), _wgslsmith_div_vec2_f32(vec2<f32>(753f, var_0.b), arg_1.b))), _wgslsmith_f_op_f32(-func_2().c.c), -1000f, -1072f <= _wgslsmith_f_op_f32(-arg_2)))).c.b.d;
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.a.b + var_0.d.a.b)) + _wgslsmith_f_op_vec2_f32(floor(arg_1.b))) * _wgslsmith_f_op_vec2_f32(-arg_1.b)), Struct_4(u_input.a.x, Struct_3(all(arg_0.zy), _wgslsmith_f_op_f32(max(arg_2, var_1.a.b.x)), vec2<f32>(-2684f, _wgslsmith_f_op_f32(f32(-1f) * -640f)), Struct_2(func_2().b.d.a, abs(var_0.d.b))), Struct_1(20141i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.b, arg_1.b) + _wgslsmith_f_op_vec2_f32(-arg_1.b)), arg_1.c, arg_1.b.x, true))).c.b;
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * 819f) + _wgslsmith_f_op_f32(select(-1000f, arg_1.b.x, false))), arg_2)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, arg_1.b.x))), Struct_4(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a), u_input.a), func_2().b, arg_1)).c).c.b;
    var var_2 = Struct_4(func_2().a, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1099f, arg_1.d)))), Struct_4(arg_1.a >> (1u % 32u), func_2().b, func_2().b.d.a)).c.b, func_4(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(1646f + var_0.c.x)), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-arg_2))), func_4(vec2<f32>(_wgslsmith_f_op_f32(1000f + -1491f), _wgslsmith_div_f32(arg_1.c, -333f)), Struct_4(arg_1.a, Struct_3(var_1.a.e, var_0.b, arg_1.b, Struct_2(Struct_1(arg_1.a, vec2<f32>(var_1.a.c, var_1.a.b.x), -447f, 457f, true), var_0.d.a.a)), Struct_1(1i, var_0.c, -377f, arg_2, arg_1.e))).c).c.b.d.a);
    return abs(_wgslsmith_mult_i32(var_0.d.b, abs(u_input.a.x)));
}

fn func_6(arg_0: i32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> bool {
    var var_0 = Struct_5(!select(vec2<bool>(all(vec4<bool>(false, true, true, arg_3.c.e)), arg_3.b.a), !select(vec2<bool>(false, arg_3.b.a), vec2<bool>(arg_3.b.d.a.e, arg_3.b.a), arg_3.c.e), all(vec4<bool>(true, true, true, true))), -_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_3.c.a, u_input.a.x, -1i, arg_0)), -vec4<i32>(arg_3.a, 31982i, -1i, 101832i)), func_4(vec2<f32>(518f, -817f), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.b.d.a.b * vec2<f32>(arg_2, arg_3.c.d)), arg_3.c.b), func_2()).c).c);
    var var_1 = ~(-33999i);
    let var_2 = u_input.a.zy;
    var_1 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(min(u_input.a, var_0.b.zzy), var_0.b.wxz) ^ vec3<i32>(~(-1i), u_input.a.x, u_input.a.x)), vec3<i32>(var_0.b.x, -30358i, _wgslsmith_dot_vec2_i32(~var_2, var_0.b.xx | vec2<i32>(-1i, 1i)) ^ arg_3.c.a));
    var var_3 = vec2<i32>(31869i, firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.b.zz, _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_3.a, -2147483647i), -var_0.b.yy))));
    return any(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(func_5(vec3<bool>(true, true, any(vec4<bool>(true, false, true, true))), func_1(), func_2().b.d.a.d), reverseBits(min(~vec4<u32>(59160u, 1u, 149514u, 8565u), vec4<u32>(4294967295u, 0u, 20837u, 0u))), 644f, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(524f, 127f), vec2<f32>(-657f, 665f)))), Struct_4(u_input.a.x, func_4(vec2<f32>(-1000f, 1399f), Struct_4(9009i, Struct_3(true, -358f, vec2<f32>(1793f, -477f), Struct_2(Struct_1(u_input.a.x, vec2<f32>(242f, 228f), 1693f, -1026f, false), u_input.a.x)), Struct_1(2147483647i, vec2<f32>(3059f, -2265f), 1203f, -613f, false))).c.b, func_2().c)).c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-405f, 1781f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f * func_2().c.c)))), vec2<f32>(292f, 902f), Struct_2(func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 33039i, -39537i, 5048i), vec4<i32>(4454i, 0i, u_input.a.x, 9492i)), u_input.a.x << (4294967295u % 32u)), countOneBits(u_input.a ^ u_input.a))));
    var var_1 = var_0.d.b;
    var_1 = _wgslsmith_mod_i32(func_4(func_1().b, Struct_4(~u_input.a.x & _wgslsmith_mod_i32(var_0.d.a.a, 15813i), func_2().b, func_2().b.d.a)).b.x, -u_input.a.x);
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, func_2().b.d.a.a);
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-var_0.c), Struct_4(_wgslsmith_sub_i32(1i, u_input.a.x), Struct_3(!all(vec2<bool>(var_0.a, var_0.d.a.e)), 1000f, vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.a.d), 300f), var_0.d), var_0.d.a));
    var var_4 = var_3.c.b.d.a;
    let var_5 = 27842u;
    let var_6 = ~reverseBits(23719u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_6, var_4.c);
}

