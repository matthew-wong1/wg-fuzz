struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = all(!(!vec2<bool>(true, arg_0.x >= 13553u)));
    var_0 = false;
    let var_1 = arg_1.a.e;
    var_0 = true;
    let var_2 = true;
    return max(arg_1.b.a.x, 64674u);
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_4(Struct_3(Struct_1(vec2<f32>(1f, 1f), u_input.a >> ((arg_0.xxw & vec3<u32>(arg_0.x, 100346u, 21724u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -467f))), vec2<i32>(_wgslsmith_div_i32(-8705i, -2147483647i), firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(max(-462f, _wgslsmith_f_op_f32(f32(-1f) * -581f)))), Struct_2(vec2<u32>(arg_0.x, arg_0.x) & arg_0.xy, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(237f, 865f), vec2<f32>(963f, -1695f))), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) << (vec3<u32>(0u, 7892u, arg_0.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-635f - 359f), u_input.a.zz, 153f), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 120f)), vec3<i32>(u_input.a.x, 26071i, 1i), -130f, u_input.a.zy, -455f), Struct_1(vec2<f32>(524f, -520f), -u_input.a, _wgslsmith_f_op_f32(-1203f - -1011f), u_input.a.zy, _wgslsmith_f_op_f32(f32(-1f) * -1020f)))), countOneBits(~reverseBits(u_input.a.yz)), -832f, Struct_2(~vec2<u32>(_wgslsmith_mult_u32(1u, 0u), 20217u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, -669f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1298f, 1142f)))), u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(870f)))), u_input.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f * -1155f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-416f, 1000f), vec2<f32>(-868f, 1292f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, 379f))), _wgslsmith_mult_vec3_i32(vec3<i32>(-37317i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 38904i)), _wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a.x, 59969i)), -vec2<i32>(2147483647i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(135f, 722f) - _wgslsmith_f_op_f32(min(1213f, -1529f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -2233f), vec2<f32>(846f, -2532f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1265f)), vec2<bool>(true, true))), _wgslsmith_mult_vec3_i32(-u_input.a, vec3<i32>(0i, u_input.a.x, 28227i)), _wgslsmith_f_op_f32(f32(-1f) * -196f), ~vec2<i32>(u_input.a.x, 0i), _wgslsmith_f_op_f32(f32(-1f) * -291f))));
    var_0 = Struct_4(Struct_3(var_0.a.b.d, var_0.a.b), -firstTrailingBit(reverseBits(u_input.a.xx)), 1982f, Struct_2(reverseBits(var_0.d.a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.b.c.e)), _wgslsmith_f_op_f32(floor(-738f))), -vec3<i32>(var_0.a.b.d.b.x, -16401i, var_0.d.c.b.x), var_0.d.b.a.x, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1601f)) - -1081f)), Struct_1(var_0.a.b.c.a, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c.a.x) + -162f), vec2<i32>(5581i, u_input.a.x), var_0.a.a.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.d.d.a), _wgslsmith_mult_vec3_i32(~var_0.d.b.b, firstTrailingBit(vec3<i32>(u_input.a.x, var_0.d.d.b.x, 0i))), var_0.c, -_wgslsmith_sub_vec2_i32(var_0.a.b.c.b.yy, var_0.b), var_0.d.d.e)));
    let var_1 = var_0.d.c;
    var var_2 = true | (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + -1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) - var_1.e))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a.x))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1379f, -254f, var_0.a.b.b.c, 267f), vec4<f32>(var_0.a.a.e, var_1.a.x, var_0.c, -1341f)))))))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -1363f)));
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(38095u, 1u) >> (firstTrailingBit(~_wgslsmith_mod_u32(40201u, 7670u) | ~func_2(vec3<u32>(15034u, 21743u, 0u), Struct_3(Struct_1(vec2<f32>(-2393f, -596f), u_input.a, 530f, u_input.a.zz, -1601f), Struct_2(vec2<u32>(1u, 9012u), Struct_1(vec2<f32>(1290f, -1205f), u_input.a, 2146f, u_input.a.xy, 131f), Struct_1(vec2<f32>(293f, 2018f), u_input.a, 1225f, u_input.a.xz, 2189f), Struct_1(vec2<f32>(106f, -740f), vec3<i32>(48848i, -22920i, -1i), 1755f, vec2<i32>(u_input.a.x, -2147483647i), -1302f))), 39609u)) % 32u);
    let var_1 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(9607u, var_0, var_0), ~0u, countOneBits(1u), var_0 & var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, ~var_0, max(1u, var_0)), func_3(vec4<u32>(var_0, var_0, 96113u, var_0))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1509f, -2158f, -1487f), vec3<f32>(1439f, -257f, 365f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, 162f, 789f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(581f, 514f, -1000f), vec3<f32>(-210f, 1702f, -163f), vec3<bool>(true, true, arg_0))) - _wgslsmith_div_vec3_f32(vec3<f32>(-527f, 1354f, 867f), vec3<f32>(883f, 1439f, 1798f)))))));
    let var_3 = Struct_2(vec2<u32>(var_0, ~(0u ^ _wgslsmith_clamp_u32(49095u, var_0, var_1))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-310f, -180f, false)) * _wgslsmith_f_op_f32(193f - -1538f)), 237f), u_input.a, -2006f, vec2<i32>(firstLeadingBit(-1i), ~u_input.a.x), -1000f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-110f * 536f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))), -vec3<i32>(u_input.a.x >> (var_0 % 32u), -2147483647i, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * -571f))) - _wgslsmith_f_op_f32(-var_2.x)), u_input.a.xz, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(select(768f, var_2.x, false)))))), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, var_2.x), var_2.zz)), max(_wgslsmith_div_vec3_i32(~vec3<i32>(49574i, u_input.a.x, 1i), u_input.a), u_input.a << (vec3<u32>(50804u, 79320u, 25168u) % vec3<u32>(32u))), -1000f, firstLeadingBit(reverseBits(vec2<i32>(u_input.a.x, 1i))), -1000f));
    let var_4 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-433f)), -1193f, any(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1310f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2631f, 1000f)), _wgslsmith_f_op_f32(var_3.b.a.x - var_2.x)))), 563f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.e - var_3.c.e) + var_4.x) + 1248f), -467f), abs(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x - var_3.d.c), var_4.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.c.d.x, _wgslsmith_add_i32(-var_3.d.d.x, -61868i)), vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2834f)))) + var_3.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u >> (0u % 32u));
    var_0 = 80314u;
    var var_1 = func_1(true);
    var var_2 = -var_1.b.x | -2147483647i;
    var var_3 = func_1(all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(~2809u, 1u, 0u, 1u), vec4<u32>(_wgslsmith_clamp_u32(0u, 0u, 64416u), ~4294967295u, 4338u, 1u), vec4<bool>(true, true, true, true)), abs(~vec4<u32>(1u, 1u, 51420u, 0u)) >> (countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13966u, 44939u), vec3<u32>(1u, 1u, 1u)), 37144u, 43504u)), -1307f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(1116f * _wgslsmith_f_op_f32(sign(-270f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, var_3.e, 1000f, 288f) + vec4<f32>(1000f, -202f, var_1.e, var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_3.c, 338f, var_1.c) + vec4<f32>(var_3.e, -464f, var_1.e, -668f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_3.e, 485f, var_1.e), vec4<f32>(var_3.c, var_3.a.x, -2167f, -896f), true)) - vec4<f32>(-901f, -425f, 1000f, var_3.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), 950f))), vec4<u32>(40549u, 0u >> (countOneBits(30470u) % 32u), _wgslsmith_mult_u32(1u, firstLeadingBit(0u)), select(~62139u, firstTrailingBit(21564u), any(vec3<bool>(true, true, false)))) | firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 1u, 4294967295u, 1u))));
}

