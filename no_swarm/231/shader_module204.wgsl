struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = ~reverseBits(min(max(vec4<i32>(2147483647i, 38710i, -1i, -22472i), -vec4<i32>(-2147483647i, -1i, -50156i, 18325i)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = select(_wgslsmith_div_i32(~min(4041i, var_0.x), ~(~2147483647i)) | 1i, 0i, true);
    let var_2 = Struct_3(Struct_1(-(~(-var_0)), vec2<bool>(true, true), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), min(u_input.a, u_input.a)) & ~max(u_input.a, u_input.a), select(~(-1i), -1i, true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(601f, 1668f, true)), -914f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1522f, 598f)), _wgslsmith_div_f32(-286f, 142f)), -1361f, -2775f)), !(!vec4<bool>(true, all(vec4<bool>(false, false, false, true)), false, any(vec4<bool>(true, true, true, false)))), vec2<bool>(true, true), reverseBits(_wgslsmith_mod_u32(~u_input.a, ~(~1u))), vec2<bool>(true, true));
    var var_3 = Struct_1(abs(-vec4<i32>(0i, 2147483647i, -16407i, var_0.x)), var_2.b.yy, ~var_2.a.c, -_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(var_0.wxx, vec3<i32>(2147483647i, var_2.a.a.x, -28390i)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-21658i, -18947i, 2147483647i), vec3<i32>(17458i, 8617i, 43147i)), vec3<i32>(var_2.a.d, -10002i, -1i))), vec4<f32>(503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f - var_2.a.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.e.x)) - var_2.a.e.x), _wgslsmith_f_op_f32(-var_2.a.e.x)));
    var_3 = Struct_1((~min(var_3.a, var_2.a.a) >> ((~vec4<u32>(25951u, 0u, 1u, 17175u) >> ((vec4<u32>(var_2.d, 44092u, 11320u, 92269u) ^ vec4<u32>(39735u, var_3.c, 4294967295u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.c, var_2.d, 0u, u_input.a), select(vec4<u32>(6457u, 4294967295u, 48135u, 1u), vec4<u32>(81127u, 4294967295u, var_2.d, 53768u), vec4<bool>(false, var_2.c.x, var_3.b.x, false)), ~vec4<u32>(var_3.c, u_input.a, 69651u, 103340u))) % vec4<u32>(32u)), vec2<bool>(!var_3.b.x, true), 0u, countOneBits(-26271i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.a.e.x)))), var_3.e.x, _wgslsmith_f_op_f32(-942f - _wgslsmith_f_op_f32(trunc(1528f))))));
    return -42768i;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(vec4<i32>(-2147483647i, func_3(), -22630i, _wgslsmith_mod_i32(-11201i, -1i)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(502u, u_input.a, u_input.a, u_input.a), vec4<u32>(35713u, 1u, u_input.a, 49143u)) % vec4<u32>(32u)), select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), arg_0 >= arg_0), false), 49343u, countOneBits(func_3()) >> (firstTrailingBit(u_input.a | u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2056f, 623f, arg_0, -1738f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, arg_0, -146f, arg_0)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1000f, 345f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(833f, -1029f, -1429f, 434f)))))), !vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(16490i, -2147483647i, 2147483647i), vec3<i32>(-18258i, -1i, -57096i)) <= _wgslsmith_div_i32(0i, -2147483647i), true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false), u_input.a, select(vec2<bool>(0u <= (u_input.a ^ u_input.a), select(false, true, false) && true), vec2<bool>(!any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false)) & true), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true))));
    let var_1 = i32(-1i) * -abs(_wgslsmith_add_i32(~(-1i), var_0.a.a.x));
    let var_2 = Struct_1(var_0.a.a, !vec2<bool>(!(true == var_0.e.x), true), 4294967295u, _wgslsmith_clamp_i32(firstLeadingBit(~44074i), -16598i | ~_wgslsmith_add_i32(27235i, var_0.a.a.x), var_1 & -2147483647i), vec4<f32>(var_0.a.e.x, 306f, 1f, 110f));
    let var_3 = _wgslsmith_f_op_f32(-477f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) + -551f), any(!(!vec4<bool>(var_0.c.x, var_2.b.x, var_2.b.x, var_2.b.x))))));
    let var_4 = Struct_4(countOneBits((_wgslsmith_mod_i32(var_2.a.x, var_2.a.x) & var_0.a.a.x) >> (22469u % 32u)), _wgslsmith_clamp_vec4_i32(var_2.a, vec4<i32>(var_0.a.a.x, var_1, _wgslsmith_div_i32(var_1, _wgslsmith_mult_i32(-40063i, var_2.a.x)), 1i), var_2.a));
    return var_0.b.zww;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, arg_3, arg_3, arg_3), vec4<i32>(-10622i, 5714i, arg_3, var_0)), -vec4<i32>(var_0, -1i, var_0, -1i)) | vec4<i32>(firstTrailingBit(-62650i), arg_3, 29315i, _wgslsmith_add_i32(0i, max(var_0, arg_3))), !select(arg_0.yx, vec2<bool>(arg_2.x, true), !arg_2.xx), ~54584u, ((_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 2147483647i, -1i, 1i), vec4<i32>(var_0, var_0, var_0, -1i)) & _wgslsmith_add_i32(-18476i, var_0)) & ~(~(-1i))) | 1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2408f), 624f)), -882f, 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1174f, -1569f, 1118f, -1426f) + vec4<f32>(1000f, 368f, 1426f, 868f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-505f, 1732f, 863f, -1253f))))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2398i, arg_3, var_0, 32524i), vec4<i32>(2147483647i, 19152i, arg_3, arg_3)) > _wgslsmith_mult_i32(firstTrailingBit(arg_3), arg_3 | var_0))));
    var var_2 = Struct_2(Struct_1(var_1.a, arg_0.yy, 0u, i32(-1i) * -(~49391i), var_1.e), !select(vec3<bool>(var_1.b.x | false, all(arg_2.zx), true), arg_2, var_1.b.x), Struct_1(abs(vec4<i32>(~var_1.d, arg_3, _wgslsmith_mod_i32(var_0, arg_3), var_0)), arg_2.yy, var_1.c, ~(~abs(var_0)), _wgslsmith_f_op_vec4_f32(abs(var_1.e))), !select(!select(vec4<bool>(false, arg_0.x, true, var_1.b.x), vec4<bool>(true, arg_2.x, true, true), vec4<bool>(var_1.b.x, true, arg_2.x, false)), select(select(vec4<bool>(var_1.b.x, true, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_2.x, arg_2.x), true), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_2.x, var_1.b.x, arg_2.x), vec4<bool>(false, var_1.b.x, arg_2.x, true)), false), !select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(var_1.b.x, false, arg_2.x, arg_2.x), false)), Struct_1(abs(vec4<i32>(14832i, arg_3, var_0, abs(1i))), arg_2.xy, _wgslsmith_add_u32(var_1.c, (u_input.a << (128121u % 32u)) << ((0u | u_input.a) % 32u)), 0i, _wgslsmith_f_op_vec4_f32(select(var_1.e, vec4<f32>(_wgslsmith_f_op_f32(var_1.e.x * -1267f), var_1.e.x, _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x), _wgslsmith_div_f32(var_1.e.x, -868f)), all(vec4<bool>(arg_0.x, false, var_1.b.x, true))))));
    var var_3 = abs(-vec3<i32>(var_1.a.x, arg_3, func_3()));
    var_3 = vec3<i32>(firstTrailingBit(-12708i), 1i, _wgslsmith_mod_i32(var_1.d, var_1.d));
    return Struct_2(Struct_1(abs(vec4<i32>(2147483647i, ~var_2.c.d, -1i, arg_3)), !vec2<bool>(true, all(arg_0)), 0u, firstTrailingBit(-var_3.x ^ _wgslsmith_add_i32(var_0, 10832i)), var_2.c.e), var_2.b, var_2.c, var_2.d, Struct_1(var_1.a, !vec2<bool>(!var_2.c.b.x, arg_2.x), _wgslsmith_mod_u32(4294967295u, var_1.c), _wgslsmith_dot_vec3_i32((vec3<i32>(46294i, 1i, var_2.c.a.x) << (vec3<u32>(var_1.c, 14283u, 72055u) % vec3<u32>(32u))) | vec3<i32>(var_3.x, -7604i, -1i), countOneBits(vec3<i32>(12649i, var_3.x, -62823i)) | (var_1.a.yzz >> (vec3<u32>(var_1.c, u_input.a, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.e.x, 137f, -1369f, 1699f)) - vec4<f32>(_wgslsmith_f_op_f32(step(991f, var_1.e.x)), _wgslsmith_f_op_f32(-1166f - var_2.a.e.x), _wgslsmith_f_op_f32(floor(1369f)), 1f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = arg_1.a.zz;
    var_0 = arg_1.a.zy;
    let var_1 = _wgslsmith_sub_i32(reverseBits(firstTrailingBit(var_0.x)), var_0.x);
    var_0 = -((arg_0.e.a.xz ^ select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.x, 1i), vec2<i32>(var_0.x, 33740i)), -arg_1.a.zw, !arg_1.b.x)) & arg_0.e.a.yy);
    var_0 = -_wgslsmith_mod_vec2_i32(-vec2<i32>(firstTrailingBit(arg_2), i32(-1i) * -2147483647i), arg_0.e.a.wx);
    return _wgslsmith_f_op_f32(min(arg_0.e.e.x, _wgslsmith_f_op_f32(sign(arg_1.e.x))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_5(func_4(vec3<bool>(true, all(vec2<bool>(false, true)), false), all(vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_f32(-arg_3)), countOneBits(-30061i << (u_input.a % 32u))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, 54493i, 28950i, arg_2), _wgslsmith_sub_vec4_i32(vec4<i32>(-29178i, arg_2, arg_2, arg_2), vec4<i32>(arg_2, -31888i, arg_2, arg_2))), vec2<bool>(true, any(vec4<bool>(false, true, false, true))), 0u, countOneBits(arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_1.x, -539f))), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(16036i, arg_2, arg_2), vec3<i32>(-57723i, 1970i, -1i))))));
    var var_1 = countOneBits(vec4<i32>(arg_2, arg_2, _wgslsmith_mod_i32(firstTrailingBit(0i), min(abs(arg_2), ~arg_2)), abs(arg_2)));
    var var_2 = Struct_3(func_4(!vec3<bool>(true, true, u_input.a < 3780u), any(vec3<bool>(true, true, true)), vec3<bool>(false, true, true), 5502i).e, !(!vec4<bool>(func_2(arg_0).x, true, false, any(vec2<bool>(true, false)))), select(select(vec2<bool>(func_2(105f).x, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), u_input.a >= 0u), select(vec2<bool>(true, true), func_4(vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)), vec3<bool>(false, true, true), var_1.x).d.zx, false), true), ~(~u_input.a), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1000f)).zz);
    var var_3 = select(var_2.a.a >> (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_2.a.c, 74548u, var_2.d), vec4<u32>(var_2.d, u_input.a, u_input.a, 0u)), vec4<u32>(var_2.a.c, u_input.a, 0u, var_2.d), ~vec4<u32>(u_input.a, u_input.a, var_2.d, 39082u))) % vec4<u32>(32u)), var_2.a.a, true);
    var_2 = Struct_3(Struct_1(vec4<i32>(countOneBits(-42802i), 10214i ^ -var_3.x, 2147483647i, _wgslsmith_mult_i32(i32(-1i) * -9507i, reverseBits(var_1.x))), var_2.b.xx, 18959u, 53562i, _wgslsmith_f_op_vec4_f32(ceil(var_2.a.e))), select(!var_2.b, vec4<bool>(true, true, var_2.e.x, select(u_input.a == 4294967295u, false, true)), any(!var_2.b)), select(var_2.b.zx, var_2.c, vec2<bool>(!(!var_2.e.x), all(!vec4<bool>(true, var_2.e.x, false, var_2.b.x)))), reverseBits(select(~u_input.a, 55671u, true && var_2.e.x)) << (~abs(var_2.a.c) % 32u), vec2<bool>(true, false));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.c, var_2.d, ~min(4294967295u & var_2.a.c, ~u_input.a), _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_2.d, var_2.d), vec3<u32>(7039u, var_2.a.c, 4841u)), abs(vec3<u32>(27351u, var_2.d, u_input.a)), true), reverseBits(vec3<u32>(var_2.a.c, var_2.a.c, u_input.a) >> (vec3<u32>(u_input.a, 46523u, u_input.a) % vec3<u32>(32u))))), firstLeadingBit(~((vec4<u32>(var_2.d, 6748u, var_2.d, u_input.a) & vec4<u32>(5465u, u_input.a, u_input.a, 4459u)) >> (~vec4<u32>(var_2.a.c, var_2.a.c, 0u, 57534u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -11184i >> (_wgslsmith_dot_vec3_u32(~max(~vec3<u32>(1u, u_input.a, 58153u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), reverseBits(firstTrailingBit(vec3<u32>(u_input.a, 0u, u_input.a)))) % 32u);
    var var_1 = func_1(459f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1075f))), _wgslsmith_f_op_f32(round(-1085f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1334f) + 400f))), ~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(304f, 327f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -2103f, false)) * 160f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-781f, 449f))) + _wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-692f + 501f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1938f - 1095f))), 459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, -372f))))));
    let var_3 = u_input.a >= ~_wgslsmith_sub_u32(abs(~7172u), select(func_4(vec3<bool>(false, false, false), true, vec3<bool>(true, true, true), var_0).a.c, _wgslsmith_mult_u32(1u, 19651u), false));
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_0, 1136i), vec3<i32>(var_0, var_0, -1i), vec3<i32>(var_0, 2147483647i, -2147483647i)), vec3<i32>(-2147483647i, var_0, var_0) & vec3<i32>(0i, 0i, 0i), ~vec3<i32>(-2147483647i, var_0, -1i)) << (abs(var_1.yyz) % vec3<u32>(32u)), vec3<i32>(-89268i, (0i << (var_1.x % 32u)) | var_0, _wgslsmith_add_i32(abs(var_0), -1i))));
    let var_5 = func_4(vec3<bool>(var_3, var_3, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f), -292f)).x), all(!select(!vec4<bool>(true, true, var_3, false), select(vec4<bool>(var_3, true, var_3, var_3), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, var_3)), func_2(var_2.x).x)), vec3<bool>(!any(select(vec4<bool>(true, var_3, true, var_3), vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(var_3, false, var_3, false))), 726f == _wgslsmith_f_op_f32(-var_2.x), false), var_0).c;
    var var_6 = ~vec4<i32>(var_4.x, -1i, 0i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-33192i, -2147483647i, -15438i), vec3<i32>(1i, -37369i, var_4.x)), abs(var_5.d << (75398u % 32u)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(abs(0u)), ~_wgslsmith_sub_u32(~var_5.c, ~var_5.c)), var_2.ywx, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(117f)), 3803i <= var_6.x)), var_5.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_sub_vec3_u32(var_1.yyx & ~_wgslsmith_clamp_vec3_u32(var_1.ywz, vec3<u32>(21398u, 4294967295u, 8139u), vec3<u32>(0u, 32055u, 23941u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~var_1.zzx, ~vec3<u32>(var_1.x, u_input.a, var_1.x)), ~(~var_1.wzy))));
}

