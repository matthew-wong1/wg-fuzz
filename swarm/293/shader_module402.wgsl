struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = ~0u;
    global0 = -1000f;
    var var_1 = -59021i;
    global0 = 176f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1763f))))))) * -826f);
    return ~reverseBits(var_0);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -11773i, arg_3.x, -1i), -vec4<i32>(0i, arg_2.a, u_input.c, arg_2.a)) & -select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, u_input.b, u_input.b), vec4<i32>(arg_1.d.a, arg_3.x, -2147483647i, u_input.a)), vec4<i32>(arg_2.a, arg_3.x, u_input.c, -32454i) >> (arg_1.c % vec4<u32>(32u)), vec4<bool>(true, false, true, arg_0)), vec4<i32>(min(min(-20375i, arg_1.d.a), ~u_input.a >> (arg_1.c.x % 32u)), u_input.b, ~(~(-2147483647i)), (~arg_1.d.a ^ firstLeadingBit(u_input.b)) & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, -30496i), ~arg_3)));
    var_0 = _wgslsmith_add_vec4_i32(select(~(-abs(vec4<i32>(u_input.a, arg_1.d.a, var_0.x, arg_2.a))), ~(vec4<i32>(arg_1.d.a, -31095i, arg_1.d.a, arg_2.a) | ~vec4<i32>(34572i, arg_1.d.a, var_0.x, arg_2.a)), vec4<bool>(true, !(!arg_0), !(!arg_0), all(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(true, false))))), _wgslsmith_div_vec4_i32(vec4<i32>(28141i, abs(u_input.a), _wgslsmith_clamp_i32(1i, countOneBits(arg_1.d.a), 2147483647i), -u_input.b), min(_wgslsmith_mod_vec4_i32(vec4<i32>(23309i, -2147483647i, 35245i, -26037i), max(vec4<i32>(8485i, arg_1.d.a, arg_1.d.a, 67965i), vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x))), vec4<i32>(arg_2.a, arg_1.d.a, _wgslsmith_div_i32(arg_3.x, 0i), -u_input.c))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1953f + -1000f)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(-2748f * _wgslsmith_f_op_f32(sign(-1805f))), -765f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_f_op_f32(1301f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1442f, -220f))))), Struct_1(min(_wgslsmith_div_i32(_wgslsmith_mod_i32(-18062i, -33479i), arg_2.a), arg_2.a), arg_1.d.b));
    return vec2<i32>(min(23613i & firstLeadingBit(_wgslsmith_div_i32(arg_1.d.a, -1i)), -43601i), arg_1.d.a);
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(round(1000f));
    var var_0 = Struct_4(_wgslsmith_mod_i32(u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.a, -45025i) | _wgslsmith_div_i32(u_input.a, 2147483647i)) | _wgslsmith_add_i32(~(~94071i), u_input.a));
    var var_1 = ~(~(-func_3(any(vec4<bool>(false, true, false, true)), Struct_2(vec3<u32>(19518u, 0u, 0u), 0u, vec4<u32>(10242u, 1u, 33421u, 83588u), Struct_1(14479i, vec2<u32>(25407u, 50534u))), Struct_4(79306i), -vec2<i32>(2147483647i, -2147483647i))));
    let var_2 = Struct_1((~var_1.x >> (~max(20449u, 1222u) % 32u)) | var_1.x, ~(~(~vec2<u32>(31254u, 1622u))));
    var_1 = (_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a, var_0.a), vec2<i32>(var_1.x, 1i), vec2<bool>(true, true)), ~vec2<i32>(var_2.a, var_0.a)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -1i), vec2<i32>(0i, var_0.a), vec2<i32>(var_2.a, -68239i))) << (var_2.b % vec2<u32>(32u))) >> (vec2<u32>(~(max(var_2.b.x, 5708u) | var_2.b.x), 0u) % vec2<u32>(32u));
    return Struct_4(u_input.c);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec4<i32>(~_wgslsmith_add_i32(20086i, 25542i), arg_0.a, -1i, -2147483647i);
    var var_1 = arg_2.a;
    var var_2 = arg_1.d.a;
    global0 = arg_2.a;
    var var_3 = vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(1488f + arg_2.b), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))));
    return arg_1.d;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = max(arg_1.b, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, _wgslsmith_add_u32(55693u, func_4(Struct_4(-1i), Struct_2(vec3<u32>(arg_1.b.x, 15794u, 1u), arg_1.b.x, vec4<u32>(1u, 4294967295u, arg_1.b.x, 1u), arg_1), Struct_3(-772f, 806f, Struct_1(u_input.c, vec2<u32>(arg_1.b.x, 37966u)))).b.x)), vec2<u32>(1u, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x))));
    let var_1 = 116075u;
    global0 = _wgslsmith_f_op_f32(547f + -661f);
    var var_2 = ~(~vec2<u32>(_wgslsmith_div_u32(arg_1.b.x, 4294967295u) ^ ~0u, arg_1.b.x));
    let var_3 = !select(select(!(!vec4<bool>(arg_0, arg_0, false, false)), !vec4<bool>(false, true, arg_0, arg_0), arg_0 || (arg_0 & arg_0)), select(select(!vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, true, arg_0), !arg_0), vec4<bool>(!arg_0, true, any(vec4<bool>(false, false, arg_0, true)), any(vec4<bool>(arg_0, arg_0, arg_0, false))), true), vec4<bool>(!any(vec4<bool>(false, arg_0, false, arg_0)), arg_0, arg_0, true));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_3) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_3.b, arg_3.a, _wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(-arg_3.b)))), vec3<i32>(-1i, 1i, -14841i), _wgslsmith_dot_vec2_i32(select(func_3(any(vec2<bool>(false, false)), Struct_2(arg_2, arg_2.x, vec4<u32>(arg_0, arg_2.x, arg_0, arg_3.c.b.x), Struct_1(arg_3.c.a, vec2<u32>(arg_3.c.b.x, 4294967295u))), Struct_4(u_input.c), vec2<i32>(55908i, u_input.b) ^ vec2<i32>(-51302i, arg_1.a)), vec2<i32>(arg_1.a, u_input.a) >> (arg_3.c.b % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<i32>(-3859i, -arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_clamp_i32(31576i, -2147483647i, -u_input.a);
    var_0 = u_input.c;
    var_0 = -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(9674i, u_input.b) ^ vec2<i32>(0i, u_input.b), vec2<i32>(u_input.a, -10928i)), ~(~vec2<i32>(-7962i, -1i))), -2853i);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1289f, -179f)) + -777f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1838f - _wgslsmith_f_op_f32(565f + 490f)), _wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1757f)))))))));
    var var_1 = vec4<bool>(1i < (u_input.a >> (func_1(false) % 32u)), true, false, true);
    var var_2 = Struct_4(44708i >> (max(_wgslsmith_dot_vec4_u32(~vec4<u32>(50154u, 0u, 0u, 0u), abs(vec4<u32>(2841u, 85873u, 40195u, 41534u))), _wgslsmith_div_u32(~1u, 4294967295u)) % 32u));
    let x = u_input.a;
    s_output = func_6(20648u, func_5(true, func_4(func_2(), Struct_2(~vec3<u32>(4294967295u, 4294967295u, 23069u), countOneBits(23939u), vec4<u32>(1u, 32988u, 17678u, 0u), Struct_1(var_2.a, vec2<u32>(0u, 1u))), Struct_3(_wgslsmith_f_op_f32(-642f * 959f), -2608f, Struct_1(var_2.a, vec2<u32>(4294967295u, 0u))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 3787u, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(8231u, 0u, 9363u), select(vec3<u32>(29385u, 40936u, 80565u), vec3<u32>(1u, 63659u, 1u), var_1.x), _wgslsmith_mult_vec3_u32(vec3<u32>(75160u, 4294967295u, 27876u), vec3<u32>(23581u, 1u, 1u)))), _wgslsmith_clamp_u32(16771u, 7991u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 0u, 20703u))), 0u), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-298f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1264f + 1745f) + _wgslsmith_f_op_f32(sign(-563f))))), 1206f, Struct_1(-1i, vec2<u32>(~5917u, 4294967295u))));
}

