struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f - _wgslsmith_f_op_f32(-662f - -1177f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1138f - -910f))), -271f));
    let var_1 = -101f;
    let var_2 = Struct_2(~select(vec3<u32>(59699u, 0u, _wgslsmith_clamp_u32(57944u, 33217u, 1u)), vec3<u32>(~1u, reverseBits(81808u), 18234u), all(vec4<bool>(false, true, false, false))), 1u, all(vec4<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))))), select(min(u_input.b, -abs(vec4<i32>(u_input.b.x, 38410i, u_input.b.x, -36382i))), countOneBits(select(u_input.b, u_input.b, select(false, false, true))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), all(vec3<bool>(false, false, false)))), Struct_1(select(vec3<bool>(any(vec3<bool>(false, false, true)), u_input.c.x <= -11757i, true), vec3<bool>(any(vec3<bool>(true, true, true)), false, any(vec3<bool>(true, false, false))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), var_0.x, false));
    var var_3 = var_2.b;
    var_3 = var_2.a.x;
    return var_1;
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_2(~(~(~vec3<u32>(18254u, 4294967295u, 1u))), ~92298u, arg_0, vec4<i32>(~u_input.c.x, -(~u_input.b.x), abs(_wgslsmith_mod_i32(u_input.c.x, -19363i)), -3477i), Struct_1(!vec3<bool>(arg_0 || arg_0, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(540f)) + _wgslsmith_f_op_f32(-1074f * 735f))), !(!(arg_0 | true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, var_0.e.b, var_0.e.b)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-var_0.e.b), 510f))), var_0.e.a));
    var_0 = Struct_2(~var_0.a, ~(~4336u), var_0.c, var_0.d, var_0.e);
    var_0 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(46220u, var_0.a.x, 1u, 4294967295u), max(vec4<u32>(1u, 20828u, 45851u, var_0.a.x), vec4<u32>(var_0.b, var_0.b, 0u, var_0.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.yz, ~var_0.a.xz), _wgslsmith_clamp_vec2_u32(var_0.a.yy ^ vec2<u32>(2370u, var_0.a.x), firstTrailingBit(vec2<u32>(0u, 16244u)), ~var_0.a.xx)), 67965u), 31327u >> (var_0.b % 32u), true, u_input.b, var_0.e);
    let var_2 = _wgslsmith_f_op_f32(exp2(var_0.e.b));
    return var_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)));
    let var_1 = -2147483647i;
    var var_2 = -26531i;
    var_2 = _wgslsmith_dot_vec2_i32(reverseBits(select(-u_input.c.zy, -vec2<i32>(-46487i, -32800i), ~arg_1 < _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(0u, 1u)))), -reverseBits(vec2<i32>(~u_input.a, 2147483647i)));
    let var_3 = ~u_input.a;
    return Struct_3(true, var_0);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(all(!select(vec4<bool>(false, arg_1.a, arg_1.b, true), vec4<bool>(arg_1.a, arg_1.b, true, arg_1.b), false)), false && all(select(vec3<bool>(arg_1.b, true, true), vec3<bool>(arg_1.b, true, true), vec3<bool>(true, arg_1.a, arg_1.b))), true), _wgslsmith_f_op_f32(-arg_0), true);
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(reverseBits(1i), _wgslsmith_mult_i32(~u_input.c.x, 2147483647i), -39039i) & _wgslsmith_div_i32(u_input.a, reverseBits(_wgslsmith_mult_i32(u_input.c.x, u_input.a))), _wgslsmith_mod_i32(-2147483647i, 13110i));
    let var_2 = arg_1;
    var var_3 = arg_0;
    var_3 = _wgslsmith_f_op_f32(abs(-421f));
    return Struct_2(vec3<u32>(~1u, 21343u, _wgslsmith_dot_vec2_u32(~vec2<u32>(56283u, 1u), select(abs(vec2<u32>(0u, 33297u)), vec2<u32>(1u, 1u), all(vec3<bool>(false, var_2.b, var_0.a.x))))), 4294967295u, false, _wgslsmith_mod_vec4_i32(~(-vec4<i32>(1i, var_1.x, 1i, 33745i)), -firstLeadingBit(u_input.b)), Struct_1(select(select(!vec3<bool>(true, var_2.b, arg_1.a), vec3<bool>(arg_1.a, var_2.b, false), var_0.a), !var_0.a, select(vec3<bool>(false, false, false), select(var_0.a, var_0.a, vec3<bool>(var_2.a, var_0.c, true)), select(vec3<bool>(arg_1.a, true, var_2.b), var_0.a, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2238f, var_0.b), 1077f)))), true));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    let var_0 = all(arg_0.e.a.yy);
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~firstTrailingBit(4294967295u), ~arg_0.a.x << (32645u % 32u), arg_0.a.x), vec3<u32>(arg_0.b, select(arg_0.a.x & arg_0.a.x, 1u, var_0), arg_0.b)), vec3<u32>(countOneBits(0u), ~select(firstTrailingBit(1u), ~arg_0.b, true), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a.zx, arg_0.a.zz), vec2<u32>(arg_0.b, 0u)), ~_wgslsmith_clamp_vec2_u32(arg_0.a.yz, vec2<u32>(0u, 18818u), vec2<u32>(arg_0.b, arg_0.b)))));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1890f), -1134f, arg_0.e.b)), arg_0.a.x ^ ~_wgslsmith_div_u32(arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, arg_0.b), arg_0.a)));
    var var_3 = Struct_1(!(!vec3<bool>(!arg_0.c, var_0 & false, arg_0.c | true)), _wgslsmith_f_op_f32(arg_0.e.b - arg_0.e.b), var_2.a);
    let var_4 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) * _wgslsmith_f_op_f32(907f - var_3.b))), var_3.b, -400f), abs(10547u));
    return Struct_3(true, any(!(!vec4<bool>(arg_0.c, false, var_2.b, false))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    var var_0 = arg_0.b;
    var var_1 = Struct_3(!arg_2.c, arg_2.c);
    var_1 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(232f, 1000f)))) + _wgslsmith_f_op_f32(floor(arg_0.e.b))), func_4(_wgslsmith_f_op_vec3_f32(func_2(false)), ~8246u)));
    let var_2 = arg_2.b;
    var_1 = Struct_3(any(select(!vec2<bool>(arg_0.e.c, var_1.a), vec2<bool>(true, arg_0.c | var_1.b), !any(vec4<bool>(arg_2.c, var_1.a, arg_0.e.c, arg_2.e.a.x)))), ((arg_2.c & false) && true) | !(!arg_0.c));
    return reverseBits(reverseBits(~_wgslsmith_mult_u32(var_2, ~3071u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(false, true);
    var var_1 = 104f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-171f, 883f), -2106f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1790f), _wgslsmith_div_f32(378f, -211f))))));
    var var_3 = abs(vec2<u32>(~_wgslsmith_clamp_u32(20599u, 31165u, 56736u), ~(~12090u)) >> (_wgslsmith_sub_vec2_u32(firstTrailingBit(min(vec2<u32>(19023u, 4294967295u), vec2<u32>(50956u, 0u))), ~(~vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)));
    let var_4 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, 0u, var_3.x), vec3<u32>(1u, var_3.x, var_3.x), vec3<u32>(1867u, 21782u, 34547u)), vec3<u32>(50932u, var_3.x, 23821u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(107832u, var_3.x, 23325u), vec3<u32>(var_3.x, 20003u, var_3.x))), ~firstLeadingBit(18480u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(37445u, 1u, 1u), vec3<u32>(var_3.x, 39975u, 1u) << (vec3<u32>(0u, var_3.x, var_3.x) % vec3<u32>(32u)), abs(vec3<u32>(0u, var_3.x, 0u))) >> (~(vec3<u32>(var_3.x, var_3.x, 82629u) << (vec3<u32>(var_3.x, var_3.x, var_3.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mod_u32(var_3.x, 44726u), true, vec4<i32>(-_wgslsmith_div_i32(0i >> (var_3.x % 32u), u_input.a), (u_input.c.x >> (var_3.x % 32u)) << (func_1(Struct_2(vec3<u32>(69167u, 27579u, var_3.x), var_3.x, var_0.a, vec4<i32>(-2147483647i, 2186i, u_input.c.x, u_input.b.x), Struct_1(vec3<bool>(var_0.a, var_0.b, true), var_2.x, false)), vec2<u32>(0u, 0u) << (vec2<u32>(var_3.x, 39097u) % vec2<u32>(32u)), Struct_2(vec3<u32>(var_3.x, 19233u, 7161u), var_3.x, var_0.b, u_input.b, Struct_1(vec3<bool>(var_0.a, var_0.b, var_0.a), 162f, var_0.b)), u_input.b >> (vec4<u32>(var_3.x, 0u, var_3.x, var_3.x) % vec4<u32>(32u))) % 32u), 1i, u_input.b.x), Struct_1(!select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.b, var_0.b), select(vec3<bool>(var_0.b, var_0.a, true), vec3<bool>(true, var_0.b, true), true)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -918f)), !func_5(_wgslsmith_f_op_f32(var_2.x + var_2.x), func_4(vec3<f32>(var_2.x, var_2.x, -1001f), var_3.x)).e.a.x));
    var_3 = vec2<u32>(var_3.x, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(~var_4.a), var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(-15245i), var_2, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 605f))) - _wgslsmith_f_op_vec2_f32(var_2 - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-841f, 1047f), vec2<f32>(var_4.e.b, var_4.e.b))))), var_2)), _wgslsmith_mult_vec2_u32(select(~var_4.a.zx, vec2<u32>(var_4.a.x, 73891u), vec2<bool>(false, var_0.a)) >> (vec2<u32>(var_3.x, var_4.a.x) % vec2<u32>(32u)), var_4.a.xz));
}

