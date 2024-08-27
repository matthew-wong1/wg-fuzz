struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, _wgslsmith_f_op_f32(-800f + arg_2)))), Struct_1(arg_2, 65539u, ~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<bool>(true, select(false, false, true), false), vec3<bool>(arg_2 >= arg_2, true, true), all(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_clamp_u32(arg_1.x, abs(arg_1.x & arg_0), arg_0), ~vec3<i32>(~u_input.a, _wgslsmith_mod_i32(11798i, u_input.a), firstLeadingBit(-1i)), vec3<bool>(true, any(vec3<bool>(false, false, true)), true)));
    global0 = var_0.c.d.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) + 587f)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-732f, var_0.c.a)), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(1482f + 1f), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(max(var_0.b.a, 661f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-785f, 1526f, arg_2))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, arg_2, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.b.a, -725f)), vec3<bool>(false, var_0.b.d.x, var_0.b.d.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a, 876f, arg_2) - vec3<f32>(1319f, -216f, -582f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, var_0.b.a, var_0.c.a) - vec3<f32>(arg_2, 674f, -1251f))) * vec3<f32>(1205f, _wgslsmith_f_op_f32(-arg_2), arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, 206f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.a, arg_2, arg_2), vec3<f32>(arg_2, 474f, arg_2))))))));
    return _wgslsmith_mult_vec4_u32(arg_1, ~arg_1);
}

fn func_2() -> bool {
    let var_0 = Struct_3(100603u, _wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(-3180i, u_input.a, u_input.a)), ~u_input.a, u_input.a & max(u_input.a, 29262i)), Struct_1(-800f, max(abs(1u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 44127u, 0u, 0u)), func_3(1u, vec4<u32>(0u, 0u, 0u, 1u), 980f))), vec3<i32>(firstLeadingBit(min(-12413i, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.a, u_input.a)) >> (1u % 32u), 2147483647i), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a, reverseBits(u_input.a)), max(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), countOneBits(vec2<i32>(u_input.a, -1i)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(30196i), 0i), countOneBits(-vec2<i32>(-27530i, u_input.a)), ~(-vec2<i32>(u_input.a, u_input.a)))), -367f);
    global0 = !(!all(vec2<bool>(true, true)));
    var var_1 = Struct_4(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.b, 8375u, var_0.c.b, var_0.a) | vec4<u32>(var_0.c.b, 9701u, 0u, var_0.c.b), vec4<u32>(0u, var_0.c.b, 0u, 24345u)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 6300u, 5762u, 4294967295u), vec4<u32>(18703u, var_0.a, var_0.a, var_0.c.b))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1554f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e, var_0.c.a), vec2<f32>(var_0.c.a, 1800f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1086f, 473f) - vec2<f32>(var_0.e, -1847f))))), Struct_1(_wgslsmith_div_f32(-1376f, 372f), ~var_0.a & ~var_0.a, _wgslsmith_div_vec3_i32(-var_0.c.c, vec3<i32>(var_0.b, u_input.a, -1i)), !var_0.c.d), Struct_1(-1082f, ~var_0.c.b, abs(vec3<i32>(-29052i, var_0.c.c.x, 0i)) ^ ~var_0.c.c, !var_0.c.d)));
    var var_2 = -455f;
    var_1 = Struct_4(select(vec4<u32>(countOneBits(56210u), var_0.c.b, min(1u, ~0u), countOneBits(1u) ^ var_1.b.b.b), vec4<u32>(7063u, ~var_1.b.b.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a.x, 33319u), var_0.c.b), var_0.c.b), select(any(select(vec3<bool>(var_1.b.b.d.x, var_0.c.d.x, var_0.c.d.x), vec3<bool>(var_1.b.b.d.x, false, true), var_0.c.d)), true, var_0.c.d.x)), Struct_2(var_1.b.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -808f), ~_wgslsmith_mod_u32(var_0.c.b, var_1.b.b.b), vec3<i32>(~(-2147483647i), ~u_input.a, select(var_1.b.b.c.x, var_0.b, false)), !var_1.b.b.d), var_1.b.c));
    return true;
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<bool>(~(func_3(29199u, vec4<u32>(1u, 12630u, 1u, 49846u), arg_0.x).x >> (3760u % 32u)) > min(25451u, max(50157u, 0u)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), all(vec2<bool>(false, false)));
    let var_1 = !(!var_0.x);
    var var_2 = -4773i << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(firstLeadingBit(1u), 1u, ~4294967295u)), ~(~(~vec3<u32>(23097u, 4294967295u, 55369u)))) % 32u);
    var var_3 = ~_wgslsmith_div_u32(~(~1u), 1u);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-845f * -1036f), ~reverseBits(1u), min(vec3<i32>(0i, ~u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-17174i, -58192i, 28294i), vec3<i32>(u_input.a, u_input.a, u_input.a))), select(vec3<i32>(_wgslsmith_sub_i32(43185i, 2147483647i), -4104i, ~0i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(2147483647i, u_input.a, 22441i))), vec3<bool>(false, true, arg_0.x <= 934f))), !var_0);
    return Struct_2(vec2<f32>(876f, _wgslsmith_f_op_f32(916f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)))), Struct_1(-1079f, 1896u, var_4.c, var_0), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(475f)), var_4.a))), var_4.b, ~(firstTrailingBit(var_4.c) << (vec3<u32>(55293u, 13769u, 0u) % vec3<u32>(32u))), var_0));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = true | (true | any(vec2<bool>(true, true)));
    global0 = false;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(100f, 493f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, -251f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-546f, 904f), vec2<f32>(1342f, 197f), true)) + vec2<f32>(1196f, -178f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(431f, 1922f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-523f, -102f), vec2<f32>(-1157f, 380f), func_2())))));
    let var_2 = var_1.c.c;
    global0 = !(!(146f >= var_1.b.a));
    return !(var_1.c.a >= var_1.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = countOneBits(~(~(~abs(vec2<u32>(arg_0.b, 1u)))));
    return func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f * -1951f)), 24501u, select(vec3<i32>(var_0, var_0, 1i) ^ vec3<i32>(u_input.a, u_input.a, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, u_input.a, 56497i), vec3<i32>(u_input.a, var_0, 1i)), vec3<bool>(true, false, false)) ^ vec3<i32>(~var_0, _wgslsmith_mod_i32(var_0, 2147483647i), -2147483647i), select(vec3<bool>(u_input.a >= 1i, true, func_1(vec3<u32>(21193u, 1u, 20330u), u_input.a, 10870u)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), true))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -344f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2243f, 1000f), vec2<f32>(145f, -1407f))))), vec2<f32>(-340f, _wgslsmith_f_op_f32(-1626f * -925f)))).b);
    let var_2 = 0u;
    var var_3 = Struct_4(~(~firstTrailingBit(~vec4<u32>(var_1.c.b, var_1.b.b, var_1.b.b, var_2))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(562f, var_1.a.x) * func_4(var_1.a).a) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1358f, 472f)), _wgslsmith_f_op_vec2_f32(var_1.a - var_1.a))))));
    let var_4 = select(!var_1.c.d.yz, vec2<bool>(false, true), vec2<bool>(var_3.b.b.d.x, func_1(var_3.a.zww, -_wgslsmith_add_i32(0i, var_1.b.c.x), _wgslsmith_mod_u32(var_1.c.b, 46506u))));
    global0 = select(1u, func_5(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, var_1.a.x) + var_1.a)).c, Struct_1(var_3.b.a.x, select(4294967295u, var_2, false), vec3<i32>(55169i, u_input.a, -38636i) << (var_3.a.xzx % vec3<u32>(32u)), !var_1.b.d)).b.b, all(vec4<bool>(!var_3.b.c.d.x, var_1.c.d.x, -854f < var_1.a.x, true))) != _wgslsmith_dot_vec2_u32(var_3.a.xw, vec2<u32>(func_4(var_3.b.a).c.b, 1u));
    var var_5 = Struct_3(10924u, ~(~(-(~var_3.b.c.c.x))), func_4(func_5(var_1.c, var_1.b).a).b, vec2<i32>(_wgslsmith_clamp_i32(var_0, _wgslsmith_mod_i32(u_input.a, var_0 & -2147483647i), _wgslsmith_clamp_i32(1i, ~var_1.b.c.x, _wgslsmith_mod_i32(var_1.c.c.x, var_1.c.c.x))), abs(u_input.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-946f - _wgslsmith_f_op_f32(var_1.a.x * -629f)))))));
    var var_6 = func_5(Struct_1(_wgslsmith_f_op_f32(var_3.b.a.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(450f)), var_1.b.a, !var_3.b.b.d.x))), 17595u, abs(func_4(var_1.a).b.c), !vec3<bool>(true, 144f > var_5.e, var_3.b.a.x <= -427f)), var_3.b.c);
    let var_7 = !all(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_5.c.d.x, false, false, var_3.b.c.d.x), !select(vec4<bool>(var_4.x, true, true, var_6.b.d.x), vec4<bool>(var_3.b.c.d.x, var_6.c.d.x, true, false), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1218f * 1402f), -1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.c.a, var_5.e)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_6.b.a, var_5.e), var_1.a))))).b.c.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-855f, var_6.a.x, 361f, -1000f), vec4<f32>(134f, var_5.e, var_6.b.a, var_3.b.b.a)))))), firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.c.x, u_input.a, 8891i, var_5.b), vec4<i32>(-1i, 2147483647i, 10191i, u_input.a) ^ vec4<i32>(-2147483647i, 295i, 21438i, var_5.b))));
}

