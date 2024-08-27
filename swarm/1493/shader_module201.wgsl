struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = u_input.c ^ _wgslsmith_mod_u32(4631u, countOneBits(max(_wgslsmith_dot_vec3_u32(vec3<u32>(33526u, 67557u, 8935u), vec3<u32>(1u, 1u, 13930u)), ~9312u)));
    var var_1 = arg_0.yy;
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(41626u, var_0), vec2<u32>(6721u, u_input.c), vec2<bool>(true, true)), vec2<u32>(60638u, 1u)), min(vec2<u32>(_wgslsmith_mult_u32(var_0, u_input.d), firstTrailingBit(firstTrailingBit(u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, u_input.c), abs(vec2<u32>(u_input.a, 29895u)))));
    var_1 = !select(arg_0.zx, !select(vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x), !arg_0.xx), !vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.x)), true));
    let var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0, var_0, 0u)), countOneBits(vec3<u32>(var_2, var_0, 50285u) & vec3<u32>(1u, var_2, 14558u))), Struct_1(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 670u, var_0), vec3<u32>(0u, var_0, u_input.d))), 0u, true, _wgslsmith_clamp_u32(1u, u_input.c, 58907u) == var_2), _wgslsmith_sub_vec3_i32(u_input.b, min(min(vec3<i32>(2147483647i, u_input.b.x, 29583i), u_input.b), vec3<i32>(8494i, u_input.b.x, 2147483647i))), Struct_1(vec3<u32>(reverseBits(0u), 10027u, ~6402u), 99038u, false, true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(25196u, u_input.a, var_0)) >> (vec3<u32>(11360u >> (u_input.c % 32u), ~30968u, 4294967295u) % vec3<u32>(32u))), !select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, false))), !vec4<bool>(true, arg_0.x, false, true), all(!vec2<bool>(true, arg_0.x))), -(~u_input.b.x));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(726f, 415f, 896f, -369f) - vec4<f32>(-1742f, 876f, -535f, -203f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(216f, _wgslsmith_f_op_f32(sign(-612f)), -187f, _wgslsmith_f_op_f32(floor(1078f)))))), vec4<f32>(-614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-406f, -145f, false)))) - -712f), -1000f, 2639f)));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1880f, 644f, 1715f, 446f), vec4<f32>(-327f, 460f, -1776f, -119f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1166f, 666f, 1215f, -1000f))) * _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, false, true)))))));
    let var_1 = Struct_5((vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.e.x, u_input.e.x, -48442i), u_input.e), 1i, u_input.e.x | 27608i, u_input.b.x) >> (vec4<u32>(_wgslsmith_add_u32(0u, 0u), ~4696u, firstLeadingBit(85905u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 14236u, u_input.a, 60090u), vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.d))) % vec4<u32>(32u))) | -firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, 1i, -1i), vec4<i32>(1i, u_input.e.x, 13195i, u_input.b.x))), !select(!(-8964i > u_input.b.x), true, !any(vec4<bool>(true, true, true, false))));
    let var_2 = 10150u;
    var var_3 = Struct_1(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 35051u, 4294967295u), vec3<u32>(u_input.d, u_input.d, 42145u)), ~vec3<u32>(~110053u, 16284u ^ var_2, min(var_2, 77279u))), _wgslsmith_mod_u32(~var_2, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(87353u, var_2), u_input.c, _wgslsmith_sub_u32(8016u, var_2 | 4294967295u))), !all(!vec4<bool>(var_1.b, true, var_1.b, true)), true);
    var_3 = Struct_1(var_3.a, 1u, var_1.b, var_1.b);
    return -u_input.e >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_2, 25981u, 4294967295u, var_3.a.x) << (vec4<u32>(0u, var_3.a.x, 64529u, 66989u) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_clamp_u32(u_input.c, var_3.a.x, u_input.c), ~0u, ~u_input.a, 1u), max(countOneBits(vec4<u32>(var_3.a.x, 1u, var_3.b, var_3.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 48476u), abs(vec4<u32>(4294967295u, var_2, 0u, var_2))))) % vec4<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = Struct_5(func_2(), arg_0 > arg_0);
    let var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(max(abs(arg_1), arg_1), arg_1), Struct_1(arg_1, arg_1.x, !(!any(vec2<bool>(arg_3, var_0.b))), true), _wgslsmith_div_vec3_i32(var_0.a.zxw, -vec3<i32>(-33510i, ~(-2147483647i), 0i)), Struct_1(arg_1, u_input.c, select(any(vec3<bool>(true, true, true)), var_0.b, true), var_0.b), vec3<u32>(abs(arg_1.x), abs(abs(countOneBits(arg_1.x))), ~4294967295u));
    var var_2 = var_1;
    let var_3 = Struct_3(Struct_2(~7436u, var_2.b, -(vec3<i32>(-1i) * -var_0.a.ywx), var_2.b, ~vec3<u32>(~50772u, countOneBits(1u), _wgslsmith_add_u32(1u, 0u))), vec4<bool>(-arg_2 >= firstTrailingBit(2147483647i), true, var_2.d.d, false), func_2().x);
    var_0 = Struct_5(~vec4<i32>(_wgslsmith_clamp_i32(var_3.a.c.x >> (0u % 32u), 10440i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, var_3.c), var_3.a.c)), ~(~2147483647i), _wgslsmith_clamp_i32(var_0.a.x, arg_2, firstTrailingBit(var_0.a.x)), -2436i), var_3.b.x);
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(u_input.d, 1u, 10567u, 0u)) >> (firstTrailingBit(~vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.a)) % vec4<u32>(32u)), ~countOneBits(~vec4<u32>(4294967295u, 0u, u_input.c, 0u)));
    var var_1 = Struct_2(func_1(727f, ~var_0.xyx & vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.d), ~14812u, u_input.c | 18445u), _wgslsmith_sub_i32(-(-30682i >> (1u % 32u)), -30719i >> (var_0.x % 32u)), ~1i < u_input.e.x), Struct_1(~select(vec3<u32>(var_0.x, 789u, 4294967295u) & var_0.wwz, ~var_0.xww, true), ~27181u, select(u_input.e.x ^ -20001i, _wgslsmith_mod_i32(u_input.e.x, u_input.b.x), true) <= -func_2().x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec3<i32>(~firstTrailingBit(2147483647i), abs(~0i), ~u_input.b.x) & vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(1i), 1i), -_wgslsmith_mult_i32(0i, 2147483647i), 51951i), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)) | var_0.wxx, 9873u, any(vec4<bool>(true, true, true, true)), true), ~var_0.wyz);
    let var_2 = vec4<bool>(!(_wgslsmith_sub_i32(var_1.c.x, -48706i) <= 0i), all(!vec2<bool>(var_1.d.c | true, any(vec4<bool>(false, false, false, var_1.d.c)))), _wgslsmith_div_f32(-648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(947f)))), false);
    var var_3 = u_input.b.x;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-407f)) + _wgslsmith_f_op_f32(f32(-1f) * -1141f)))));
}

