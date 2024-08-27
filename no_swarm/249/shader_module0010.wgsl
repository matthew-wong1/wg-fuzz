struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = countOneBits(~select(~vec4<i32>(u_input.a.x, 18229i, 1i, arg_2), max(vec4<i32>(14783i, arg_2, 19058i, arg_2), vec4<i32>(u_input.a.x, arg_2, -29190i, -8057i)), arg_1.c.x <= 525f) ^ ((vec4<i32>(-2147483647i, arg_2, -18393i, arg_2) ^ vec4<i32>(-17660i, arg_2, 1i, u_input.a.x)) | vec4<i32>(arg_2, -15718i, 48146i, _wgslsmith_add_i32(1i, 24671i))));
    var var_1 = vec2<u32>(~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(8877u, 45311u), _wgslsmith_mod_u32(1u, 27997u))), select(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 0u, 1u, 86070u)), ~vec4<u32>(2308u, 4294967295u, 53193u, 0u)), abs(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(44406u, 8386u, 49943u, 24922u), vec4<u32>(0u, 0u, 54644u, 41116u)))), true));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)) + arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1976f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + arg_1.d)))), arg_0.e.a.x));
    var_0 = vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(~(-14744i), firstLeadingBit(var_0.x)), arg_2), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(10932i, -arg_2, var_0.x & var_0.x, arg_2), firstTrailingBit(vec4<i32>(u_input.a.x, arg_2, 12444i, -24011i)))), ~(-_wgslsmith_mult_i32(var_0.x, -1i) & firstLeadingBit(1i)), min(u_input.a.x, arg_2));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_2, -2147483647i, var_0.x) ^ firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2, var_0.x, u_input.a.x, u_input.a.x)) | ~vec4<i32>(-1i, u_input.a.x, -2147483647i, 40345i)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -8111i, arg_2), var_0.x, u_input.a.x, _wgslsmith_div_i32(~u_input.a.x, -47847i)), ~vec4<i32>(-1i, var_0.x, var_0.x, -1i) << (~firstTrailingBit(vec4<u32>(9106u, 104079u, var_1.x, 16779u)) % vec4<u32>(32u))));
    return var_2;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = true;
    let var_1 = !(arg_0.x <= _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.x, Struct_1(vec3<bool>(false, false, true)), vec2<f32>(arg_0.x, -2146f), arg_0.x, Struct_1(vec3<bool>(true, true, false))), Struct_2(1602f, Struct_1(vec3<bool>(false, false, false)), vec2<f32>(arg_0.x, arg_0.x), 179f, Struct_1(vec3<bool>(true, false, true))), -2147483647i))))));
    var_0 = true;
    var var_2 = Struct_2(_wgslsmith_div_f32(-330f, arg_0.x), Struct_1(select(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, false), vec3<bool>(var_1, true, var_1)), select(vec3<bool>(true, var_1, var_1), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1, false), true), true), var_1)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_0)))), vec2<f32>(arg_0.x, arg_0.x), select(select(vec2<bool>(false, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(true, var_1), !vec2<bool>(var_1, var_1)))))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), Struct_1(vec3<bool>(!var_1, true, true)));
    var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(-1908f, _wgslsmith_f_op_f32(max(var_2.d, -338f))))))), var_2.b, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))))), var_2.e);
    return vec4<u32>(31750u, ~1u, arg_1.x, 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f + arg_2.c.x)))), Struct_1(!(!select(vec3<bool>(arg_2.e.a.x, false, true), arg_2.b.a, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.c)) * vec2<f32>(_wgslsmith_div_f32(arg_2.d, arg_2.c.x), -384f)), arg_2.d, Struct_1(vec3<bool>(any(vec4<bool>(true, false, true, true)), arg_2.e.a.x, true)));
    let var_1 = !(!(!vec3<bool>(all(arg_2.b.a), true, true)));
    let var_2 = _wgslsmith_mult_u32(~arg_0.x, arg_0.x);
    return Struct_3(abs(vec4<u32>(var_2, ~arg_0.x, arg_0.x << (4294967295u % 32u), arg_0.x << (var_2 % 32u))) << (~arg_0 % vec4<u32>(32u)), arg_2);
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4((func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, 860f)), vec2<u32>(13203u, 114099u)) | ~vec4<u32>(29640u, 0u, 71233u, 1u)) >> (vec4<u32>(1u << (0u % 32u), select(1u, firstLeadingBit(4294967295u), false), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(2971u, 4294967295u), vec2<u32>(0u, 0u)) << (~4294967295u % 32u)) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(~(~max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(15898i, 0i, u_input.a.x))), vec3<i32>(abs(u_input.a.x), abs(u_input.a.x), (-24817i | u_input.a.x) >> (26246u % 32u))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1203f, _wgslsmith_f_op_f32(-200f - 647f))) - _wgslsmith_f_op_f32(sign(-959f))), Struct_1(vec3<bool>(true, all(vec3<bool>(true, false, false)), true)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1004f * 172f), _wgslsmith_f_op_f32(step(-205f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1361f, 1344f), vec2<f32>(-855f, 1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -767f), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true))))));
    let var_1 = Struct_4(var_0.b, any(!var_0.b.b.a.xx), -vec4<i32>(~(~(-8850i)), _wgslsmith_mult_i32(u_input.a.x & 6509i, ~u_input.a.x), firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-8182i, 16165i, u_input.a.x), ~vec3<i32>(-3847i, -55389i, u_input.a.x))));
    let var_2 = var_1;
    let var_3 = var_0.a.zy;
    let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(76582u, 103679u, var_0.a.x, 0u), var_0.a, vec4<bool>(true, true, var_2.a.e.a.x, false)), ~var_0.a, vec4<u32>(2713u, var_3.x, var_0.a.x, 25921u))), ~var_0.a), var_0.a);
    return ~(~abs(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(func_1()), vec4<u32>(43435u, 1u, _wgslsmith_dot_vec3_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, -465f)), _wgslsmith_add_vec2_u32(vec2<u32>(41362u, 57804u), vec2<u32>(1237u, 11069u))).xyw, vec3<u32>(1u, 1u, 1u)), ~(_wgslsmith_clamp_u32(75445u, 0u, 37649u) << (firstTrailingBit(1u) % 32u))));
    var var_1 = 1868f;
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(func_1().x, _wgslsmith_add_u32(55699u, 42158u), 1u, func_4(vec4<u32>(1u, 1u, 0u, 0u), 1i, Struct_2(-1499f, Struct_1(vec3<bool>(false, true, false)), vec2<f32>(-238f, -166f), -1775f, Struct_1(vec3<bool>(false, true, false)))).a.x), ~vec4<u32>(select(52024u, 70103u, false), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 97332u, 64313u), vec3<u32>(1u, 0u, 26631u)), func_4(vec4<u32>(54173u, 0u, 10768u, 49017u), u_input.a.x, Struct_2(2380f, Struct_1(vec3<bool>(false, false, false)), vec2<f32>(797f, 1000f), 944f, Struct_1(vec3<bool>(false, false, false)))).a.x), firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(~66686u, max(func_4(vec4<u32>(1u, 0u, 1u, 4294967295u), u_input.a.x, Struct_2(-816f, Struct_1(vec3<bool>(false, true, false)), vec2<f32>(303f, 707f), 565f, Struct_1(vec3<bool>(true, false, true)))).a.x >> (1u % 32u), func_4(abs(vec4<u32>(32472u, 4294967295u, 59829u, 9594u)), _wgslsmith_dot_vec3_i32(vec3<i32>(11596i, u_input.a.x, -46655i), vec3<i32>(8257i, u_input.a.x, 36057i)), func_4(vec4<u32>(35722u, 81071u, 10722u, 0u), u_input.a.x, Struct_2(-1211f, Struct_1(vec3<bool>(false, true, true)), vec2<f32>(534f, -393f), 425f, Struct_1(vec3<bool>(true, false, false)))).b).a.x), 1u, abs(13306u)));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(122f, 1f)), func_4(~abs(vec4<u32>(1688u, 33138u, 44690u, 4294967295u)), ~2147483647i, func_4(firstTrailingBit(vec4<u32>(0u, 0u, 7989u, 50565u)), u_input.a.x << (2125u % 32u), Struct_2(-332f, Struct_1(vec3<bool>(true, false, false)), vec2<f32>(1335f, -299f), 305f, Struct_1(vec3<bool>(false, true, false)))).b).b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, 1730f)), vec2<bool>(true, true))) - vec2<f32>(-430f, _wgslsmith_f_op_f32(max(540f, -899f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-310f, Struct_1(vec3<bool>(true, false, false)), vec2<f32>(-1591f, -380f), -524f, Struct_1(vec3<bool>(true, false, true))), func_4(vec4<u32>(4294967295u, 31869u, 0u, 4294967295u), u_input.a.x, Struct_2(-932f, Struct_1(vec3<bool>(true, true, false)), vec2<f32>(1171f, -1375f), -2698f, Struct_1(vec3<bool>(false, true, false)))).b, -37845i)) * _wgslsmith_f_op_f32(f32(-1f) * -1736f)), func_4(vec4<u32>(~115135u, min(1u, 4294967295u), 1u, ~4294967295u), -firstTrailingBit(-1i), func_4(~vec4<u32>(0u, 24643u, 1u, 4294967295u), ~u_input.a.x, Struct_2(182f, Struct_1(vec3<bool>(false, true, false)), vec2<f32>(444f, -1000f), -2677f, Struct_1(vec3<bool>(true, true, true)))).b).b.b), any(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(any(vec2<bool>(false, true)), true, func_4(vec4<u32>(0u, 4294967295u, 44921u, 4294967295u), -2147483647i, Struct_2(431f, Struct_1(vec3<bool>(true, false, true)), vec2<f32>(-2313f, -187f), -596f, Struct_1(vec3<bool>(true, false, true)))).b.e.a.x, all(vec2<bool>(false, false))))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(12772i, 2143i, u_input.a.x, u_input.a.x), ~vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -2147483647i)), i32(-1i) * -25208i, -17162i, -(~36603i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-23141i, u_input.a.x, 38291i, 35198i), reverseBits(vec4<i32>(-26705i, 1i, 869i, u_input.a.x))), abs(countOneBits(vec4<i32>(u_input.a.x, 0i, -1339i, u_input.a.x))))));
    var_0 = ~func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_4(vec4<u32>(61726u, 82653u, 1u, 46561u), 37516i, Struct_2(-1118f, Struct_1(vec3<bool>(var_2.b, var_2.a.b.a.x, var_2.b)), vec2<f32>(var_2.a.c.x, var_2.a.c.x), var_2.a.a, var_2.a.e)).b.c, _wgslsmith_f_op_vec2_f32(-var_2.a.c), var_2.a.b.a.x)), vec2<f32>(_wgslsmith_f_op_f32(var_2.a.a - var_2.a.d), -1615f)), vec2<u32>(1u, ~(~22562u))).x;
    var var_3 = _wgslsmith_div_i32(var_2.c.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, 0u, ~min(abs(vec3<u32>(0u, 0u, 1u)), abs(~vec3<u32>(1u, 57772u, 79347u))), ~(~var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f + _wgslsmith_f_op_f32(1705f * -726f)) + _wgslsmith_div_f32(-1127f, 446f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a - 1102f)))));
}

