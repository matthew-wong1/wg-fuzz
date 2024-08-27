struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = arg_0.a;
    let var_1 = u_input.d == 4294967295u;
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(arg_0.a.b.x, min(countOneBits(4294967295u), var_0.c.b.x) >> (countOneBits(var_0.b.x) % 32u)), _wgslsmith_mult_u32(~firstTrailingBit(~0u), 27971u));
    var var_3 = Struct_1(_wgslsmith_div_i32(abs(u_input.c), ~countOneBits(~2147483647i)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 6551u >> (var_0.c.b.x % 32u), 4294967295u), ~abs(var_0.c.b)), ~countOneBits(min(vec2<i32>(-1i, 7918i), u_input.e.yy)), arg_0.a.a.x, true);
    var var_4 = vec3<bool>((all(vec3<bool>(false, true, var_3.e)) && (false & (arg_0.a.a.x | false))) | var_3.d, arg_0.a.c.d, arg_0.a.c.d);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f - 228f) * 928f), 1121f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(min(-290f, 1664f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1010f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1282f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-741f, arg_3.a.x, select(var_0.c.d, var_0.a.x, true))), arg_1.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(trunc(arg_0))))))));
    var var_1 = !((arg_1.a.d < ~_wgslsmith_mod_i32(14242i, -25887i)) || (true & !(4294967295u != arg_1.a.c.b.x)));
    return max(0i, _wgslsmith_sub_i32(u_input.e.x >> (~arg_1.a.b.x % 32u), arg_1.a.c.c.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = vec4<i32>(reverseBits(arg_1.x), _wgslsmith_dot_vec4_i32(countOneBits(select(arg_0, _wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(24734i, -17944i, arg_0.x, u_input.b), arg_0), !arg_2)), arg_0), 62932i, func_4(-1172f, Struct_3(Struct_2(!vec4<bool>(arg_2, false, false, arg_2), firstTrailingBit(vec2<u32>(4294967295u, u_input.d)), Struct_1(u_input.a.x, vec3<u32>(60394u, 25693u, 78283u), arg_1.yy, false, true), ~(-825i), -arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3, arg_3, false)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec2<u32>(25864u, 45464u), Struct_1(-2147483647i, vec3<u32>(23420u, u_input.d, u_input.d), arg_1.xx, true, false), 1i, -15520i)), arg_3, -689f, Struct_4(vec3<f32>(arg_3.x, 113f, arg_3.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 1165f)), vec2<f32>(arg_3.x, arg_3.x))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1336f, arg_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))));
    var var_2 = Struct_4(vec3<f32>(arg_3.x, var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))));
    var_2 = Struct_4(var_2.a);
    var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), 335f, 675f)));
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    let var_0 = select(!vec3<bool>(func_2(firstTrailingBit(vec4<i32>(arg_0, arg_0, u_input.b, arg_0)), vec3<i32>(arg_0, -56875i, u_input.e.x), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1609f, arg_1.x) - arg_1.yy)), -53605i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(16632i, arg_0)), true), vec3<bool>(!arg_2, func_2(abs(-vec4<i32>(arg_0, -5763i, 966i, arg_0)), firstLeadingBit(vec3<i32>(u_input.e.x, u_input.b, 19424i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(21581u, u_input.d, u_input.d), vec3<u32>(u_input.d, 1u, 0u)) % vec3<u32>(32u)), ~u_input.e.x < 1i, _wgslsmith_f_op_vec2_f32(arg_3.a.zx - _wgslsmith_f_op_vec2_f32(arg_3.a.yx - vec2<f32>(-989f, arg_3.a.x)))), arg_2), !vec3<bool>(false | all(vec2<bool>(false, arg_2)), select(arg_2 && false, all(vec4<bool>(arg_2, arg_2, arg_2, false)), true), !arg_2 || !arg_2));
    let var_1 = ~vec2<i32>(abs(28422i), max(i32(-1i) * -27363i, arg_0));
    var var_2 = Struct_3(Struct_2(select(!select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(var_0.x, false, arg_2, false), var_0.x), !vec4<bool>(var_0.x, arg_2, false, arg_2), true), ~select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d), arg_2) | vec2<u32>(countOneBits(u_input.d), ~u_input.d), Struct_1(_wgslsmith_sub_i32(-1i, 0i), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(0u, u_input.d, u_input.d)), _wgslsmith_div_vec2_i32(u_input.a, u_input.e.xz), false, arg_2), countOneBits(var_1.x), var_1.x));
    let var_3 = Struct_3(var_2.a);
    let var_4 = Struct_2(!select(!select(var_3.a.a, var_3.a.a, true), select(!vec4<bool>(var_0.x, var_3.a.c.e, false, true), !var_2.a.a, vec4<bool>(false, var_3.a.a.x, var_3.a.c.e, arg_2)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_3.a.c.d, var_0.x, arg_2), var_2.a.a)), var_2.a.b, var_3.a.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(var_3.a.c.a, u_input.e.x, -1i, -1i), vec4<i32>(1140i, -2147483647i, -2147483647i, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.c.b.x, var_2.a.b.x, var_3.a.b.x, 4294967295u), vec4<u32>(40054u, 0u, u_input.d, 15320u)) % vec4<u32>(32u)), select(vec4<i32>(u_input.e.x, 2147483647i, var_3.a.c.a, 58359i), firstLeadingBit(vec4<i32>(2698i, -2147483647i, var_1.x, var_2.a.e)), !vec4<bool>(false, true, true, arg_2))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-44016i, 0i, -12829i, 0i) | vec4<i32>(var_3.a.c.c.x, -25168i, u_input.e.x, 2147483647i), min(vec4<i32>(var_3.a.e, var_2.a.c.a, var_1.x, arg_0), vec4<i32>(var_1.x, u_input.c, u_input.c, -40684i))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-6258i, var_1.x, arg_0, 26483i), vec4<i32>(0i, var_3.a.c.c.x, var_1.x, 13035i)), ~vec4<i32>(-1i, -1i, var_2.a.d, arg_0)), vec4<bool>(any(vec4<bool>(var_3.a.c.e, var_3.a.a.x, false, var_3.a.c.e)), u_input.b < -22925i, true, select(true, true, var_0.x)))), countOneBits(2147483647i));
    return Struct_3(Struct_2(select(var_4.a, var_3.a.a, var_4.a.x), ~(~(~vec2<u32>(1u, var_3.a.c.b.x))), var_2.a.c, _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(-8675i, var_4.c.a, -1i)), max(u_input.e, select(u_input.e, u_input.e, vec3<bool>(true, var_4.a.x, arg_2)))), abs(var_3.a.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-13018i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-426f))), 539f, -461f, -584f), true, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, -899f, -673f) + vec3<f32>(-798f, 694f, -1490f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 1f) - _wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(sign(217f)))));
    let var_2 = ((~0u == u_input.d) | (var_0.a.c.d | all(vec2<bool>(true, false)))) && true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + _wgslsmith_f_op_f32(sign(-523f))), _wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(-1444f * _wgslsmith_f_op_f32(1652f - -846f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(var_0.a.a, vec2<u32>(1u, u_input.d), var_0.a.c, u_input.e.x, 1i)), var_3.zx, var_3.x, Struct_4(vec3<f32>(var_3.x, var_3.x, var_3.x)))).x, 416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f * 852f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, 992f, var_3.x, var_3.x))))), !vec4<bool>(true, var_2, var_2, -1i >= var_0.a.c.a))) + vec4<f32>(-399f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))) * _wgslsmith_f_op_f32(ceil(-432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))));
    let var_5 = select(vec4<u32>(u_input.d, 10415u, 0u, var_0.a.b.x << ((~21008u << (select(1u, 37322u, var_2) % 32u)) % 32u)), ~abs(vec4<u32>(~36880u, 98551u, _wgslsmith_div_u32(var_0.a.c.b.x, u_input.d), u_input.d)), vec4<bool>(var_2 || var_0.a.a.x, true || !select(false, true, true), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(func_1(-28649i >> (var_0.a.b.x % 32u), vec4<f32>(var_4.x, var_4.x, -473f, var_3.x), true, Struct_4(var_4.ywy)).a.c.b.x), _wgslsmith_f_op_f32(-var_4.x), 1u, ~vec2<u32>(_wgslsmith_sub_u32(~var_5.x, select(u_input.d, 23143u, true)), var_0.a.c.b.x));
}

