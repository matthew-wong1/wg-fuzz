struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-474f + -1000f))) * 1360f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-277f)))))), vec3<i32>(~countOneBits(u_input.a.x ^ u_input.d), select(u_input.a.x, u_input.d, any(vec3<bool>(true, true, false))), -1i), (~abs(vec4<u32>(91732u, 0u, u_input.b.x, 11841u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(62126u, u_input.c, 18763u, 1u) ^ vec4<u32>(1u, u_input.b.x, 25655u, u_input.b.x), vec4<u32>(u_input.b.x, 4064u, u_input.b.x, 19505u))) & vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 37748u, 10119u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), firstLeadingBit(firstLeadingBit(u_input.b.x)), 1u | ~u_input.c, ~32983u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x ^ 77904u, 59777u, ~u_input.c, 1u), select(vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.c, 4201u, u_input.c, u_input.b.x), vec4<bool>(false, false, true, true)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 37461u, 4294967295u), vec4<u32>(80231u, 104324u, 1u, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, 4838u), vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)) ^ select(vec4<u32>(u_input.b.x, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<bool>(true, false, true, false))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1592f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -946f)))))), (vec3<i32>(-1i, u_input.a.x, i32(-1i) * -33311i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 2147483647i, u_input.e) | var_0.b, vec3<i32>(13351i, var_0.b.x, var_0.b.x))) | _wgslsmith_clamp_vec3_i32(-var_0.b, -vec3<i32>(24255i, 2147483647i, var_0.b.x) >> (~vec3<u32>(var_0.d.x, 0u, u_input.b.x) % vec3<u32>(32u)), var_0.b), vec4<u32>(~countOneBits(~u_input.c), _wgslsmith_mult_u32(~(~0u), 72699u), 1u, 5587u), ~(~vec4<u32>(countOneBits(0u), _wgslsmith_add_u32(var_0.d.x, var_0.d.x), ~u_input.c, ~var_0.c.x)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), u_input.a.x, 41021i) ^ ~var_0.b, -_wgslsmith_clamp_vec3_i32(~u_input.a.wyx, -vec3<i32>(-2147483647i, -1i, 10734i), u_input.a.wxw)), reverseBits(~_wgslsmith_clamp_vec4_u32(var_0.d, reverseBits(vec4<u32>(u_input.c, var_0.d.x, 16718u, u_input.c)), var_0.d)), _wgslsmith_sub_vec4_u32(~var_0.d, countOneBits(max(var_0.d, var_0.c))) & ~min(min(vec4<u32>(u_input.c, var_0.d.x, 4294967295u, 45966u), var_0.c), max(vec4<u32>(1u, u_input.c, 8890u, u_input.b.x), var_0.c)));
    let var_1 = _wgslsmith_add_vec2_u32(u_input.b ^ vec2<u32>(var_0.c.x, 4294967295u), vec2<u32>(4294967295u, ~(~_wgslsmith_mod_u32(43699u, 4294967295u))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - 2265f)), var_0.b, select(var_0.c, var_0.d, select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<u32>(_wgslsmith_sub_u32(countOneBits(1u), u_input.b.x) | ~abs(var_0.c.x), _wgslsmith_sub_u32(min(_wgslsmith_sub_u32(43661u, var_1.x), countOneBits(4294967295u)), (u_input.b.x | u_input.c) ^ firstLeadingBit(0u)), 1u, abs(~var_0.d.x)));
    return var_2.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(-1000f, -879f), vec3<i32>(-37381i, -1i, i32(-1i) * -(u_input.a.x & -8977i)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.b.x << (u_input.b.x % 32u), 368u), u_input.c, max(abs(u_input.b.x), 1u & u_input.b.x)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 30394u, u_input.c, 1u), select(vec4<u32>(105510u, 20810u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 32179u, u_input.b.x, 4294967295u), vec4<bool>(true, false, false, true)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))), (reverseBits(func_3()) & ~vec4<u32>(u_input.c, u_input.b.x, 44938u, u_input.c)) >> ((~vec4<u32>(0u, 1u, 0u, u_input.c) ^ (~vec4<u32>(4294967295u, u_input.b.x, 0u, 71209u) | ~vec4<u32>(10024u, 0u, 4294967295u, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = 2113f;
    var_1 = _wgslsmith_f_op_f32(sign(110f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f - -410f) - var_0.a.x);
    var var_2 = Struct_1(var_0.a, select(max(~u_input.a.wyx, (vec3<i32>(-34208i, u_input.a.x, -2147483647i) ^ var_0.b) & ~vec3<i32>(3585i, u_input.e, -55982i)), u_input.a.zzx, false), _wgslsmith_mod_vec4_u32(var_0.c, vec4<u32>(abs(~38336u), ~(69992u | u_input.b.x), u_input.b.x, ~0u & var_0.c.x)), ~(~var_0.c) ^ var_0.d);
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a - vec2<f32>(152f, _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(var_0.a.x * -294f))))), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_div_vec3_i32(var_0.b, var_2.b)) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_2.b.x, var_2.b.x), u_input.a.xzz), reverseBits(firstTrailingBit(-u_input.a.xwz))), firstLeadingBit(~vec4<u32>(firstTrailingBit(u_input.c), ~var_2.d.x, u_input.b.x & 4294967295u, ~28742u)), var_0.c);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = min(~firstLeadingBit(arg_1.d), firstTrailingBit(~arg_1.d));
    let var_1 = vec4<bool>(true, select(false, false, true), (select(u_input.b.x, ~31115u, any(vec4<bool>(true, true, false, false))) << (1u % 32u)) < u_input.b.x, !(!(!all(vec4<bool>(true, false, true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - -448f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x)))), arg_1.a.x, arg_1.a.x)));
    var var_3 = arg_1;
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))), max(vec3<i32>(1i, 2075i, ~(-49049i)) << (_wgslsmith_mult_vec3_u32(var_0.zyx ^ var_3.d.xyw, arg_1.d.wyw) % vec3<u32>(32u)), ~(~arg_0)), vec4<u32>(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(78015u, arg_1.d.x)), 4294967295u), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(56476u, 1u, _wgslsmith_add_u32(var_3.d.x, 0u), arg_1.d.x), ~vec4<u32>(1u, 0u, u_input.c, arg_1.d.x) & vec4<u32>(1u, 7329u, 1u, 1u)), abs(var_3.d.x)), ~vec4<u32>(countOneBits(arg_1.d.x) >> (var_0.x % 32u), 1u, abs(38660u), ~(~9300u)));
    return 962f;
}

fn func_1() -> vec4<u32> {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<i32>(u_input.e, u_input.d, u_input.a.x), func_2()))), var_1), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(47437i, 1i) >> (1u % 32u), _wgslsmith_mult_i32(-29632i << (var_0 % 32u), -u_input.e)), 1i, firstTrailingBit(-2147483647i)), ~(~(~vec4<u32>(u_input.c, 0u, 4294967295u, var_0) & ~vec4<u32>(u_input.c, 15308u, 1u, 4294967295u))), max(~(~vec4<u32>(43348u, var_0, 4294967295u, u_input.b.x)), min(func_3(), vec4<u32>(4294967295u, u_input.b.x, var_0, 1u))) | _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(36976u, 0u), abs(110791u), _wgslsmith_mult_u32(var_0, var_0), 1u), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, var_0, 393u, 1u), vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u), vec4<bool>(false, false, true, false)), ~vec4<u32>(var_0, 0u, u_input.c, var_0), vec4<u32>(0u, var_0, u_input.c, var_0))));
    return ~select(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_2.d.x, u_input.c, var_2.d.x, 45794u), var_2.d, true), vec4<u32>(var_2.d.x, u_input.b.x, 3756u, 29677u)), ~var_2.c << (var_2.d % vec4<u32>(32u)), vec4<bool>(true, true, true, true)) & ~vec4<u32>(~32398u >> (~u_input.c % 32u), min(_wgslsmith_add_u32(4294967295u, var_2.d.x), ~var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_0), _wgslsmith_mod_vec2_u32(var_2.d.yy, vec2<u32>(u_input.b.x, 57362u))), ~func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -145f;
    let var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(var_0 - var_0) == 289f, !(any(vec3<bool>(false, false, true)) || true), (var_0 > var_0) | (45312u <= ~u_input.b.x)));
    let var_2 = 13636i;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1368f, 726f) + var_0)), _wgslsmith_div_f32(890f, -1324f)), countOneBits(vec3<i32>(abs(reverseBits(var_2)), -u_input.a.x << (~1u % 32u), firstTrailingBit(14620i))), ~abs(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.c, 1u), ~vec4<u32>(20222u, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1449u, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(52812u, 40103u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, 20204u, 85257u, 0u)), vec4<u32>(31364u, 33591u, u_input.b.x, u_input.c)), abs(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c, u_input.b.x, u_input.c, 1u), ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c)), func_1())));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_3.a * vec2<f32>(_wgslsmith_div_f32(var_3.a.x, var_3.a.x), var_3.a.x)))), vec3<i32>(~var_3.b.x, u_input.d, _wgslsmith_clamp_i32(var_3.b.x, _wgslsmith_add_i32(-1i, -2147483647i), countOneBits(firstLeadingBit(var_3.b.x)))), ~vec4<u32>(firstLeadingBit(var_3.d.x), var_3.c.x, 4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.x, 4294967295u), vec2<u32>(u_input.b.x, var_3.d.x)))), ~(vec4<u32>(1u, u_input.b.x, u_input.b.x, 8206u) & ~var_3.d) | vec4<u32>(1u, 39097u, ~abs(23663u), u_input.b.x >> (1u % 32u)));
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_4.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1641f, _wgslsmith_f_op_f32(f32(-1f) * -410f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), -var_4.b ^ _wgslsmith_mult_vec3_i32(u_input.a.wzz, -_wgslsmith_div_vec3_i32(var_4.b, vec3<i32>(var_2, -65834i, 0i))), vec4<u32>(var_4.d.x, 1u, ~1u, abs(0u)), select(~vec4<u32>(u_input.b.x, 49459u, 1u, u_input.c) >> (reverseBits(var_4.d) % vec4<u32>(32u)), vec4<u32>(var_4.c.x, _wgslsmith_div_u32(var_3.d.x, var_4.c.x), ~4294967295u, _wgslsmith_clamp_u32(~var_3.c.x, ~u_input.c, ~39907u)), !(!select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, true, true, var_1)))));
    var var_5 = func_2();
    var var_6 = !(!vec3<bool>(true, var_1, all(vec2<bool>(true, var_1))));
    var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d, 3328u, -288f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.a.x, 1980f, -896f, 623f), vec4<f32>(var_4.a.x, var_0, 439f, var_0), vec4<bool>(false, var_1, var_1, false))))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_4.a.x)), _wgslsmith_f_op_f32(var_0 + var_4.a.x), -1514f, _wgslsmith_f_op_f32(f32(-1f) * -795f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_f32(310f, 1000f), -197f, var_0)))));
}

