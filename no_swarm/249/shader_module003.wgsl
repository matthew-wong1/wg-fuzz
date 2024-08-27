struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-620f, -1005f, 2690f, 294f)))))))), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(reverseBits(~u_input.a.x), ~u_input.d)), -reverseBits(firstLeadingBit(select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 4181i), vec4<i32>(-9796i, -6723i, 0i, 85455i), vec4<bool>(false, false, false, false)))), Struct_1(~u_input.a.x ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(354u, u_input.a.x, 30448u), vec3<u32>(4294967295u, u_input.c.x, u_input.a.x)), vec3<u32>(~_wgslsmith_div_u32(52802u, 28424u), u_input.d, 22750u), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true || any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, u_input.c.x)), ~_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.c))));
    let var_1 = ((vec3<u32>(0u, max(var_0.e.a, var_0.c), ~73083u) >> (var_0.e.b % vec3<u32>(32u))) & var_0.e.b) & vec3<u32>(1448u, u_input.c.x, min(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.a, u_input.d) >> (vec2<u32>(31134u, var_0.c) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 0u))));
    var_0 = Struct_3(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_0.d.x, max(-44559i, 2147483647i), 25290i >> (var_1.x % 32u)), ~(var_0.a | vec3<i32>(u_input.b.x, var_0.a.x, var_0.a.x))), max(max(vec3<i32>(var_0.d.x, u_input.b.x, 3052i), reverseBits(vec3<i32>(var_0.a.x, var_0.d.x, u_input.b.x))), abs(reverseBits(var_0.a))), var_0.a), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))), 1u, -vec4<i32>(reverseBits(var_0.a.x), 2147483647i, i32(-1i) * -2147483647i, firstTrailingBit(var_0.d.x)) | reverseBits(-(var_0.d | var_0.d)), var_0.e);
    var var_2 = Struct_4(reverseBits(~(~firstLeadingBit(var_0.d))), _wgslsmith_dot_vec2_i32(var_0.a.xx | vec2<i32>(var_0.a.x, _wgslsmith_div_i32(var_0.a.x, -5568i)), u_input.b.yy));
    let var_3 = any(var_0.e.c.xwz);
    return var_1.x >= 1u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a.x) ^ u_input.d, _wgslsmith_mult_u32(~u_input.a.x, 31997u), 34201u, select(~u_input.c.x, u_input.a.x, all(vec2<bool>(false, true)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 14958u, u_input.c.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.d, 1u, 0u)))), ~_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(1u, u_input.d, u_input.a.x)), vec3<u32>(min(u_input.c.x, u_input.a.x), 1u, u_input.c.x)), !vec4<bool>(true, func_3(), all(vec2<bool>(true, true)), _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 14754u) <= u_input.d), true, vec2<u32>(~u_input.c.x, u_input.d));
    var var_1 = Struct_1(0u, min(vec3<u32>(var_0.b.x, ~(~0u), var_0.e.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 2635u), vec3<u32>(u_input.a.x, ~4294967295u, abs(var_0.b.x)))), select(select(var_0.c, vec4<bool>(!var_0.c.x, var_0.c.x, true, true), false), vec4<bool>(u_input.b.x > 1i, var_0.c.x, firstTrailingBit(-1i) >= _wgslsmith_add_i32(1i, u_input.b.x), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(895f + -1000f))) <= _wgslsmith_f_op_f32(942f + 1f)), any(select(select(select(var_0.c.wzx, var_0.c.wxw, vec3<bool>(var_0.c.x, var_0.d, var_0.d)), var_0.c.yyz, var_0.c.x), !var_0.c.zzz, var_0.c.wxz)), select(vec2<u32>(1u, 4294967295u), var_0.e, !(!(!var_0.d))));
    var var_2 = Struct_5(~(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, u_input.a.x, u_input.d, 0u)), vec4<u32>(var_0.a, var_0.e.x, var_1.b.x, var_0.a))), ~vec4<u32>(~0u, reverseBits(u_input.d), 1u, 0u), abs(u_input.a));
    var_2 = Struct_5(var_2.a, ~var_2.b, firstTrailingBit(countOneBits(~var_1.e)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-572f, -1684f)) + 697f)));
    return Struct_3(~vec3<i32>(-u_input.b.x | u_input.b.x, -firstTrailingBit(u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.zx), u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(993f)), _wgslsmith_f_op_f32(-632f * -607f), _wgslsmith_f_op_f32(-1000f - -1130f), 905f) * vec4<f32>(-894f, 1000f, _wgslsmith_f_op_f32(702f * -2281f), _wgslsmith_div_f32(871f, 809f)))), reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, var_1.b.x, 14767u, var_0.a)) | _wgslsmith_sub_vec4_u32(var_2.b, var_2.b), abs(min(var_2.a, vec4<u32>(19839u, 0u, 1u, 32411u))))), _wgslsmith_sub_vec4_i32(max(abs(vec4<i32>(-25605i, 23442i, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, -42708i, 1i)) >> (vec4<u32>(4294967295u, 39712u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 12078u, 1u), var_0.b)) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x >> ((var_1.a & 4294967295u) % 32u), 634i, firstTrailingBit(firstLeadingBit(2147483647i)))), Struct_1(1u, _wgslsmith_add_vec3_u32(var_2.a.wyx, firstLeadingBit(vec3<u32>(1u, var_1.e.x, 1u))) ^ ~(~vec3<u32>(23361u, 30326u, 18472u)), vec4<bool>(true, all(!vec4<bool>(false, var_0.c.x, true, var_0.d)), var_1.c.x, (-74332i | u_input.b.x) != -6897i), true, abs(u_input.a)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0 & arg_0;
    let var_1 = var_0;
    let var_2 = _wgslsmith_add_i32(i32(-1i) * -u_input.b.x, 0i);
    var var_3 = Struct_5(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 78925u, arg_1), vec4<u32>(76708u, 0u, arg_1, 98191u)) | ~vec4<u32>(15759u, u_input.a.x, arg_1, 66206u), ~vec4<u32>(4294967295u, 0u, 43392u, 61377u) & reverseBits(vec4<u32>(u_input.d, 4393u, 0u, 58502u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.d, arg_1, 36076u), vec4<u32>(u_input.a.x, 11079u, u_input.a.x, 84635u) & vec4<u32>(arg_1, u_input.a.x, arg_1, 14566u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(~arg_1, u_input.c.x, 1u, 1u), min(vec4<u32>(1u, u_input.d, arg_1, u_input.c.x), vec4<u32>(arg_1, u_input.d, u_input.c.x, 1u))), abs(reverseBits(abs(vec4<u32>(arg_1, 15375u, 0u, u_input.a.x)))) >> (min(~(~vec4<u32>(1u, u_input.a.x, u_input.d, arg_1)), ~vec4<u32>(arg_1, arg_1, u_input.a.x, arg_1) | (vec4<u32>(2900u, arg_1, 4294967295u, 13350u) ^ vec4<u32>(0u, 1u, arg_1, 4294967295u))) % vec4<u32>(32u)), u_input.c);
    let var_4 = func_2();
    return Struct_2(abs(vec3<u32>(1u, firstLeadingBit(arg_1 ^ 8155u), var_4.c)), var_4.e, var_4.e.c.ww, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-616f + var_4.b.x))))), func_2().e);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_5) -> bool {
    var var_0 = ~_wgslsmith_sub_vec2_i32(-abs(vec2<i32>(-2147483647i, -62416i)), _wgslsmith_div_vec2_i32(~(-u_input.b.xx), -max(vec2<i32>(arg_1, u_input.b.x), vec2<i32>(0i, 2147483647i))));
    var_0 = _wgslsmith_mult_vec2_i32((firstLeadingBit(u_input.b.yx) >> (vec2<u32>(~47539u, func_1(arg_2.e.d, 0u).e.b.x) % vec2<u32>(32u))) << ((~abs(arg_2.b.e) | _wgslsmith_sub_vec2_u32(u_input.a | arg_2.b.e, ~arg_2.b.e)) % vec2<u32>(32u)), ~vec2<i32>(1i, 1i) ^ ~vec2<i32>(u_input.b.x, arg_1));
    var var_1 = Struct_4(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(countOneBits(3426i), -2147483647i, _wgslsmith_mult_i32(arg_1, -23664i), _wgslsmith_sub_i32(u_input.b.x, -2147483647i))), ~vec4<i32>(u_input.b.x, var_0.x, -102200i, firstLeadingBit(arg_1))), -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, max(vec3<i32>(arg_1, 1i, arg_1), vec3<i32>(0i, -2147483647i, var_0.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, u_input.b.x, -4725i), min(vec4<i32>(13434i, -31296i, 16910i, var_0.x), vec4<i32>(arg_1, arg_1, 1i, arg_1)))));
    let var_2 = Struct_2(arg_3.b.wwz, func_2().e, !(!(!vec2<bool>(arg_2.e.d, arg_2.e.d))), arg_0, func_1(arg_2.b.c.x, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(~arg_3.c.x, ~arg_3.c.x))).b);
    var_1 = Struct_4(-abs(select(var_1.a, -vec4<i32>(-66147i, var_1.a.x, u_input.b.x, arg_1), var_2.b.c)), ~(-(-var_1.a.x << (abs(var_2.b.a) % 32u))));
    return var_2.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1135f), u_input.b.x, func_1(true, reverseBits(1u)), Struct_5(vec4<u32>(22316u, ~67325u, ~u_input.a.x, u_input.c.x | u_input.a.x), vec4<u32>(u_input.d, 11509u & u_input.c.x, 4294967295u, 50552u), _wgslsmith_mod_vec2_u32(u_input.a, ~u_input.a))), any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, all(vec3<bool>(false, false, false)), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), any(vec2<bool>(true, true)) & true, false);
    var_0 = func_1(any(vec4<bool>(true & !var_0.x, var_0.x, var_0.x, true || (false != var_0.x))), u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.a.x, 19689u) ^ ~vec4<u32>(u_input.c.x, 52558u, 104941u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(54625u, u_input.d, u_input.d, u_input.c.x) & vec4<u32>(4294967295u, u_input.c.x, 19878u, 23883u), vec4<u32>(u_input.d, u_input.d, u_input.c.x, 4294967295u), vec4<u32>(832u, u_input.d, u_input.d, 71822u))) % 32u)).e.c;
    var_0 = vec4<bool>(!(~9032i < min(u_input.b.x, 0i >> (u_input.d % 32u))), true, var_0.x, var_0.x | all(!vec3<bool>(var_0.x, false, false)));
    var var_1 = _wgslsmith_mult_i32(-2147483647i, ~min(10687i ^ (u_input.b.x ^ -16753i), ~(-12402i)));
    let var_2 = u_input.b.x;
    let var_3 = ~vec4<u32>(u_input.c.x, ~(~u_input.a.x << (~28545u % 32u)), u_input.d ^ ~_wgslsmith_sub_u32(u_input.c.x, u_input.a.x), 41214u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(vec4<i32>(u_input.b.x, var_2, u_input.b.x, 2147483647i), vec4<i32>(1i, var_2, var_2, 1i), var_0.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(-21524i, -1i, u_input.b.x, -2147483647i), vec4<i32>(14129i, -1i, -8638i, u_input.b.x))), var_3.x, ~_wgslsmith_mod_u32(firstLeadingBit(~u_input.d), 0u));
}

