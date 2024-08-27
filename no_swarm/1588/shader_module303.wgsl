struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -39785i, u_input.a.x), true), -vec4<i32>(u_input.a.x, 1i, 64342i, -63606i))), -(~(~u_input.a.x)), -(~u_input.a.x)) | _wgslsmith_sub_vec3_i32(select(_wgslsmith_add_vec3_i32(u_input.a.xxz, vec3<i32>(u_input.a.x, -2147483647i, -12053i)), vec3<i32>(~(-3007i), 25102i, -2147483647i), select(true, any(vec4<bool>(true, false, true, false)), u_input.a.x != -2147483647i)), abs(abs(~u_input.a.zyw)));
    let var_1 = Struct_3(Struct_1(max(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(4294967295u, 1u, 1u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-705f)))));
    let var_2 = -16631i;
    let var_3 = _wgslsmith_mod_u32(var_1.a.a.x, _wgslsmith_div_u32(~var_1.a.a.x, _wgslsmith_dot_vec3_u32(abs(var_1.a.a), vec3<u32>(1u, var_1.a.a.x, var_1.a.a.x))) & var_1.a.a.x);
    var var_4 = -firstLeadingBit(-2147483647i);
    return var_1.b;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-225f, 923f, -1266f, 2845f), vec4<f32>(261f, -1660f, -408f, -178f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1646f), _wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(min(1000f, -319f)), -765f))), any(vec4<bool>(true, true, true, true)) & (_wgslsmith_f_op_f32(select(-580f, _wgslsmith_f_op_f32(506f * -165f), true)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(515f - 124f), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_mod_vec4_u32(min(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 62109u), vec4<u32>(53560u, 93982u, 43466u, 63504u)), select(4294967295u, 50770u, false), ~70771u))), Struct_3(Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(23014u, 1386u, 12629u), vec3<u32>(67562u, 6970u, 92232u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1008f + 507f), -502f))));
    var_0 = Struct_4(vec4<f32>(-1221f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.b - _wgslsmith_f_op_f32(exp2(var_0.a.x))))), var_0.a.x, var_0.a.x), all(!(!vec3<bool>(var_0.b, true, var_0.b))), ~var_0.c, var_0.d);
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.b, -1000f, var_0.d.b))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.b), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.yww)), vec3<f32>(-394f, _wgslsmith_f_op_f32(f32(-1f) * -1499f), 282f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.b, -778f, var_0.d.b) * var_0.a.xww)))) - vec3<f32>(var_0.a.x, -725f, _wgslsmith_f_op_f32(floor(-295f)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.c.yx, countOneBits(vec2<u32>(var_0.d.a.a.x, 0u))), abs(0u), abs(~4294967295u), ~(~var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b + var_0.d.b) + 1000f))), ~9481u);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)))), false, ~var_1.c, Struct_3(var_0.d.a, var_0.a.x));
    var var_2 = var_1;
    return var_0.d.a.a.x;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(~select(func_2(), ~82373u, any(vec3<bool>(true, true, false))), select(~abs(1u), ~abs(4294967295u), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), ~(~1u)) & vec3<u32>(max(~65825u, _wgslsmith_mod_u32(reverseBits(19926u), 24171u)), 1u, 4294967295u);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, 474f, 2167f, -2518f)) - vec4<f32>(-1811f, -701f, 1134f, 1057f))))), !(any(vec3<bool>(true, true, true)) != all(vec4<bool>(true, true, true, true))), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, 7814u, var_0.x), vec4<u32>(var_0.x, var_0.x, 104903u, var_0.x)), ~(~vec4<u32>(3350u, var_0.x, 1u, var_0.x))), Struct_3(Struct_1(~vec3<u32>(0u, var_0.x, 55695u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(915f, -460f) * _wgslsmith_f_op_f32(ceil(537f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-488f, -165f)) - _wgslsmith_f_op_f32(f32(-1f) * -283f)))));
    let var_2 = Struct_2(~(0u << (var_1.d.a.a.x % 32u)), var_1.d.a, var_1.d.a);
    var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1661f, var_1.a.x, all(vec3<bool>(var_1.b, false, var_1.b)))) + 1245f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-829f + var_1.d.b) * _wgslsmith_div_f32(-493f, 819f)), 1000f)), -351f, -631f), var_1.d.b > 281f, vec4<u32>(79162u >> (var_0.x % 32u), func_2(), var_2.b.a.x, ~_wgslsmith_dot_vec2_u32(reverseBits(var_1.c.zz), abs(var_0.xy))), var_1.d);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_1.d.b, var_1.a.x, -670f))), _wgslsmith_div_vec4_f32(vec4<f32>(348f, 1169f, var_1.d.b, 826f), vec4<f32>(-177f, var_1.d.b, var_1.a.x, -124f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1410f, var_1.d.b, -1027f, -184f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(-1000f, var_1.d.b, var_1.d.b, var_1.d.b)) * vec4<f32>(var_1.a.x, var_1.d.b, -979f, var_1.d.b))))), select(all(select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.b, false, false), false), vec3<bool>(var_1.b, var_1.b, var_1.b), !var_1.b)), var_1.b, 437f != _wgslsmith_f_op_f32(var_1.d.b + -716f)), _wgslsmith_mod_vec4_u32(var_1.c, ~reverseBits(var_1.c)), Struct_3(Struct_1(~vec3<u32>(4294967295u, var_2.c.a.x, var_2.c.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(floor(var_1.a.x)))))));
    return Struct_2(var_2.b.a.x, Struct_1(vec3<u32>(12135u, select(1u, reverseBits(7257u), true), var_3.d.a.a.x)), Struct_1(~max(var_0 >> (var_1.c.xzz % vec3<u32>(32u)), ~vec3<u32>(14639u, 78509u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) - -1176f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -942f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f))), _wgslsmith_f_op_f32(-451f - -1767f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(608f, 294f))))))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_0.b.a.x, var_0.a, 1u), var_0.c.a.x, ~abs(var_0.a)) <= (~func_1().a ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.a.x, var_0.c.a.x, 16430u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.a.x, var_0.c.a.x, 1u, var_0.a), vec4<u32>(var_0.c.a.x, 4294967295u, 4294967295u, var_0.a)))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(var_0.b.a.x, 1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, 166u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.x, var_0.c.a.x, 0u, 88508u), vec4<u32>(0u, 46699u, 17660u, var_0.c.a.x)))), var_0.b.a.x ^ var_0.c.a.x, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_0.a, 1u, 60883u, 1u), vec4<u32>(var_0.c.a.x, var_0.c.a.x, 31126u, 1u) ^ vec4<u32>(var_0.c.a.x, 0u, 12094u, var_0.c.a.x)), ~vec4<u32>(68636u, var_0.b.a.x, 9617u, 4294967295u) ^ (vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.c.a.x) << (vec4<u32>(4294967295u, 0u, 4294967295u, 72808u) % vec4<u32>(32u))))), Struct_3(Struct_1(~(~vec3<u32>(var_0.b.a.x, 1u, var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-205f - 270f))), 889f)));
    let var_2 = Struct_5(var_1.a.wzy, vec3<f32>(var_1.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(var_1.d.b + var_1.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -992f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1876f * var_1.d.b) * _wgslsmith_f_op_f32(f32(-1f) * -831f))), vec4<u32>(firstLeadingBit(107627u), var_1.d.a.a.x, ~var_1.c.x, var_1.d.a.a.x), 1247f, _wgslsmith_dot_vec4_u32(var_1.c, countOneBits(_wgslsmith_mult_vec4_u32(~var_1.c, var_1.c))));
    var var_3 = vec3<u32>(var_2.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.a.x, 1u, 4294967295u), var_0.c.a, var_1.d.a.a), var_0.c.a), _wgslsmith_clamp_vec3_u32(var_2.c.yww, _wgslsmith_sub_vec3_u32(var_2.c.zwz, var_1.d.a.a), var_2.c.wxy)) | _wgslsmith_add_u32(~1u, ~abs(var_0.a)), var_0.b.a.x << (var_1.d.a.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-454f, -1311f, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-381f + var_2.d), _wgslsmith_f_op_f32(exp2(var_2.a.x))), -267f)), _wgslsmith_f_op_f32(abs(var_2.a.x))));
}

