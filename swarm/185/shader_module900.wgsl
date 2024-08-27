struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = 1202f;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(633f * var_0), var_0, _wgslsmith_f_op_f32(var_0 - var_0), -1023f) - vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1859f * var_0)), -1749f));
    var var_2 = select(select(select(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, true), vec4<bool>(true, true, select(true, false, false), true), vec4<bool>(true, any(vec2<bool>(true, true)), arg_0.x != arg_1.x, true)), !vec4<bool>(arg_1.x < u_input.a, false, true, any(vec2<bool>(false, true))), !vec4<bool>(false, any(vec3<bool>(true, true, false)), true, true)), vec4<bool>(-u_input.a <= -52609i, !any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), !(!(!all(vec4<bool>(false, false, true, false)))));
    var var_3 = var_1.xw;
    var_2 = vec4<bool>(!var_2.x, select(var_2.x, true, !any(vec4<bool>(var_2.x, var_2.x, var_2.x, false))), !var_2.x && true, !(!var_2.x));
    return firstTrailingBit(_wgslsmith_sub_i32(1i, ~abs(-48685i))) << (37528u % 32u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> i32 {
    return _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(func_3(u_input.b ^ vec3<i32>(-44376i, 2147483647i, u_input.b.x), firstTrailingBit(u_input.b.zy), _wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(30104i, u_input.a))), 1i)) | u_input.b.x;
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(u_input.b.x, max(firstLeadingBit(u_input.b.x) >> (~70646u % 32u), -2147483647i), abs(u_input.b.x));
    var var_1 = vec4<i32>(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -943f), firstTrailingBit(1u), _wgslsmith_f_op_f32(181f + 248f)) ^ abs(-9299i), 1i, u_input.a, _wgslsmith_add_i32(u_input.b.x, abs(u_input.b.x)));
    var_1 = vec4<i32>(countOneBits(-(~(3114i ^ var_1.x))), var_1.x, -_wgslsmith_div_i32(max(var_0.x, u_input.b.x), -_wgslsmith_sub_i32(-27028i, -1i)), var_0.x);
    var_1 = -_wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(15602i, u_input.b.x, 18455i, var_1.x)), vec4<i32>(~(-2147483647i), 1i, 0i, 2147483647i)) & ((vec4<i32>(-1i) * -(vec4<i32>(0i, var_0.x, u_input.b.x, -2147483647i) & vec4<i32>(-22284i, var_1.x, -1i, u_input.a))) ^ -(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_1.x, u_input.b.x), vec4<i32>(-15351i, var_0.x, var_1.x, u_input.b.x))));
    var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yz, firstTrailingBit(reverseBits(var_0.xx))) ^ func_3(var_1.yyw, vec2<i32>(countOneBits(u_input.a), -1i), vec2<i32>(~2147483647i, countOneBits(16997i))), u_input.b.x, var_0.x, _wgslsmith_mod_i32(~(-u_input.a), 2318i));
    return ~(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(45575u, 55791u, 1u, 0u))) | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 48216u)), ~vec2<u32>(42510u, 0u)), 31839u));
}

fn func_4(arg_0: bool) -> Struct_4 {
    var var_0 = abs(~firstTrailingBit(reverseBits(vec2<u32>(53299u, 49637u))) & min(_wgslsmith_div_vec2_u32(~vec2<u32>(22157u, 4294967295u), abs(vec2<u32>(4294967295u, 1u))), select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 46828u), vec2<u32>(41773u, 1u)), all(vec4<bool>(arg_0, false, arg_0, arg_0)))));
    let var_1 = select(!(!vec4<bool>(arg_0, true, true, true)), select(!vec4<bool>(!arg_0, any(vec2<bool>(false, arg_0)), any(vec2<bool>(arg_0, true)), any(vec4<bool>(arg_0, true, false, false))), !select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), true), arg_0), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, 11818i), vec3<i32>(-32609i, u_input.a, u_input.a))) < _wgslsmith_sub_i32(u_input.b.x << (var_0.x % 32u), 10465i));
    var var_2 = Struct_3(false, select(!var_1.x, _wgslsmith_clamp_u32(var_0.x, ~var_0.x, 0u) > 24063u, var_1.x), (i32(-1i) * -_wgslsmith_mult_i32(1i, u_input.a)) | u_input.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, -48421i), 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1054f, 316f, -972f, 734f), vec4<f32>(-468f, 101f, -1081f, -695f), var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, 735f, 283f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, -437f, -612f, 1000f)))));
    var_2 = Struct_3(var_2.b, (abs(max(48856u, var_0.x)) < (max(118270u, var_0.x) | var_0.x)) & any(!vec2<bool>(true, arg_0)), var_2.c, _wgslsmith_clamp_i32(func_3(vec3<i32>(-27954i, 2147483647i, 2147483647i), select(_wgslsmith_div_vec2_i32(u_input.b.yy, vec2<i32>(2147483647i, 1i)), vec2<i32>(0i, 4680i), var_1.x), u_input.b.yx | u_input.b.zx), u_input.a ^ var_2.c, -var_2.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2337f, var_2.e.x, _wgslsmith_f_op_f32(-var_2.e.x), -481f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x)))), -862f, -459f, var_2.e.x))));
    var var_3 = u_input.b.zy;
    return Struct_4(Struct_2(Struct_1(-var_3.x, vec4<u32>(_wgslsmith_mult_u32(34858u, 65868u), 8426u, 0u, 1u), -(~(-2147483647i)), 9254i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.e * var_2.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, var_2.e.x, -629f, 1599f))))), 51336u, Struct_1(u_input.b.x, ~vec4<u32>(1u, var_0.x, 34601u, 3325u) << (~vec4<u32>(var_0.x, var_0.x, 4226u, 0u) % vec4<u32>(32u)), var_3.x, 1650i, _wgslsmith_f_op_vec4_f32(ceil(var_2.e)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2.e.x)) + -492f), var_2.e.x, _wgslsmith_f_op_f32(-var_2.e.x)), -1291f, Struct_1(var_3.x, abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u), max(vec4<u32>(var_0.x, 4097u, 22408u, var_0.x), vec4<u32>(var_0.x, var_0.x, 47974u, 43476u)))), _wgslsmith_dot_vec3_i32(u_input.b << (_wgslsmith_div_vec3_u32(vec3<u32>(71039u, var_0.x, var_0.x), vec3<u32>(17790u, 4294967295u, 1u)) % vec3<u32>(32u)), -(u_input.b | u_input.b)), u_input.b.x, var_2.e), Struct_2(Struct_1(-countOneBits(u_input.b.x), select(vec4<u32>(1u, var_0.x, 1u, 78858u), vec4<u32>(62768u, var_0.x, 1u, var_0.x), any(vec2<bool>(var_2.a, false))), -_wgslsmith_add_i32(var_2.d, -2147483647i), -1i, var_2.e), var_0.x, Struct_1(1i, min(vec4<u32>(1u, var_0.x, var_0.x, 0u), firstTrailingBit(vec4<u32>(0u, 4294967295u, var_0.x, var_0.x))), _wgslsmith_clamp_i32(~7271i, -19977i, u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 20872i, 29602i), vec3<i32>(1i, var_3.x, var_3.x)), 2147483647i & var_2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(968f, var_2.e.x, var_2.e.x, -440f), vec4<f32>(432f, 181f, 182f, 332f))) + _wgslsmith_f_op_vec4_f32(var_2.e + vec4<f32>(-267f, var_2.e.x, var_2.e.x, -718f))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(arg_1.d.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2, arg_1.e.c.b), ~arg_1.a.c.b, arg_1.e.a.b), -39941i, 18818i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.e.c.e.x)), -207f, _wgslsmith_f_op_f32(f32(-1f) * -351f), arg_1.b.x) - arg_1.a.a.e));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b, _wgslsmith_add_vec4_u32(vec4<u32>(76759u, arg_1.e.a.b.x, ~83529u, 4016u), _wgslsmith_add_vec4_u32(var_0.b, var_0.b) ^ var_1.c.b)), firstLeadingBit(~(~var_1.c.b) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.b, 1u, var_1.b, var_0.b.x), vec4<u32>(var_0.b.x, 38714u, var_1.b, 1u)), ~arg_2) % vec4<u32>(32u))));
    var_2 = select(abs(~(~vec4<u32>(59654u, 0u, var_2.x, arg_2.x))), arg_2, vec4<bool>(true, true != (arg_3.x && any(vec4<bool>(true, true, true, arg_0.x))), all(!vec4<bool>(arg_0.x, arg_0.x, true, true)), arg_0.x));
    var var_3 = u_input.a;
    return Struct_2(Struct_1(arg_1.e.c.a, max(vec4<u32>(_wgslsmith_clamp_u32(165u, arg_2.x, 4294967295u), 15076u, var_1.a.b.x | 17467u, arg_1.d.b.x), ~_wgslsmith_mod_vec4_u32(var_0.b, vec4<u32>(4294967295u, 4294967295u, var_0.b.x, arg_2.x))), var_0.a >> (var_1.a.b.x % 32u), u_input.b.x >> (~var_0.b.x % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(1944f * 148f), _wgslsmith_f_op_f32(-var_1.c.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.e * var_0.e)))), var_0.b.x, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(vec2<bool>(false, !var_0), func_4((1u == func_1()) && var_0), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 0u, 24877u), firstLeadingBit(vec4<u32>(4294967295u, 8186u, 4294967295u, 1u))), vec4<u32>(0u, ~(~17117u), ~43139u, ~4294967295u)), vec3<bool>(false, !any(vec3<bool>(false, var_0, false)), !var_0));
    let var_2 = (1u == ~func_1()) & false;
    var var_3 = true;
    var var_4 = Struct_3(var_0, false, u_input.a, -var_1.a.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(273f, 605f)), 193f, var_1.c.e.x, var_1.c.e.x))), var_1.c.e));
    var var_5 = Struct_3(!any(select(vec2<bool>(var_4.a, var_4.a), vec2<bool>(var_0, var_0), true)), true, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.c.a, -var_1.a.d), var_4.c), -(countOneBits(i32(-1i) * -24407i) | (var_4.d >> (func_4(false).a.c.b.x % 32u))), _wgslsmith_f_op_vec4_f32(-var_1.a.e));
    let var_6 = var_1.c.b.x;
    var var_7 = Struct_2(func_4(var_5.b).a.a, ~1u, func_4(!any(!vec4<bool>(true, true, var_0, var_4.a))).e.a);
    var_3 = !((~(~0u) >> (var_7.a.b.x % 32u)) >= ~89161u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(76702u, _wgslsmith_mod_u32(var_7.b, 42622u), ~(~1u)), var_1.b, 1i, ~vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 25654u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_7.b, var_7.c.b.x), reverseBits(39031u)), 20185u));
}

