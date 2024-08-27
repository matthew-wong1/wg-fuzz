struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(55703u, 0u, 4294967295u, 4294967295u), vec4<u32>(52573u, 4141u, 29623u, 8777u), vec4<u32>(35836u, 36074u, 1u, 1926u), vec4<u32>(4294967295u, 38518u, 27255u, 15165u), vec4<u32>(145504u, 4294967295u, 0u, 63156u), vec4<u32>(0u, 6736u, 1u, 1u), vec4<u32>(15944u, 102517u, 0u, 0u), vec4<u32>(0u, 4294967295u, 37979u, 25061u), vec4<u32>(30633u, 80034u, 34305u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(78179u, 4294967295u, 4294967295u, 1u), vec4<u32>(150232u, 36941u, 1u, 19117u), vec4<u32>(0u, 64453u, 4294967295u, 13732u), vec4<u32>(0u, 1u, 12435u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 5083u), vec4<u32>(1u, 42458u, 85959u, 29495u), vec4<u32>(1u, 4294967295u, 0u, 60625u), vec4<u32>(4294967295u, 4294967295u, 21919u, 70467u), vec4<u32>(93468u, 37290u, 69795u, 1u), vec4<u32>(1u, 4294967295u, 0u, 42747u), vec4<u32>(18438u, 4294967295u, 4294967295u, 63106u), vec4<u32>(41707u, 4294967295u, 79544u, 4294967295u), vec4<u32>(1u, 4294967295u, 62049u, 1u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(43857u, 7356u, 5092u, 14966u), vec4<u32>(1u, 1u, 55296u, 0u), vec4<u32>(48753u, 0u, 64816u, 4294967295u), vec4<u32>(0u, 18603u, 12432u, 11157u), vec4<u32>(0u, 40956u, 16224u, 81436u), vec4<u32>(1u, 4294967295u, 2603u, 4294967295u), vec4<u32>(53923u, 71693u, 12531u, 5847u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u));

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-451f, -211f, 1105f), vec3<f32>(983f, 466f, -545f), vec3<f32>(1521f, -1000f, 2308f), vec3<f32>(870f, 998f, 1033f), vec3<f32>(789f, 1000f, 501f), vec3<f32>(562f, -497f, 482f), vec3<f32>(-1000f, 731f, -1539f), vec3<f32>(-1000f, 1204f, 2085f), vec3<f32>(-1423f, -1050f, -668f), vec3<f32>(-422f, 2402f, 382f), vec3<f32>(-1108f, -1353f, -341f), vec3<f32>(534f, -610f, -1184f), vec3<f32>(107f, 750f, 572f), vec3<f32>(-872f, -1459f, -1284f), vec3<f32>(-376f, -271f, -262f), vec3<f32>(480f, -1594f, -457f), vec3<f32>(376f, 677f, 520f), vec3<f32>(509f, 207f, -1767f), vec3<f32>(917f, -279f, 1000f), vec3<f32>(-491f, -267f, -1000f), vec3<f32>(973f, 1367f, 923f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], any(vec2<bool>(false, true)))))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)))));
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    return select(37000i, -2147483647i, all(select(global0[_wgslsmith_index_u32(~u_input.a, 16u)], select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(1u, 16u)], true), _wgslsmith_f_op_f32(trunc(219f)) >= _wgslsmith_f_op_f32(sign(var_0.x)))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<bool>(false || (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2945i, -24387i, -2246i), vec4<i32>(1i, 1i, 1i, 1i)) != 32518i), true);
    global2 = array<vec3<f32>, 21>();
    let var_1 = false;
    var_0 = vec2<bool>(var_0.x, _wgslsmith_clamp_i32(~(-3923i), ~(~(-1i)), func_3(_wgslsmith_div_i32(37118i, -14999i), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 5778u), u_input.d.yx))) > -max(0i, -29754i));
    let var_2 = vec2<u32>(u_input.d.x, ~u_input.c.x) << (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, 8832u | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(75186u, 4294967295u), vec2<u32>(22109u, 44708u))), u_input.d.x), 1672u) % vec2<u32>(32u));
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f - _wgslsmith_f_op_f32(318f - -2935f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-379f + -407f), 1677f)), -956f))), ~var_2.x, Struct_1(reverseBits(u_input.d.xzw), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1944f, 1111f)), ~1u, _wgslsmith_div_vec2_f32(vec2<f32>(-439f, 1399f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(428f, -1525f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(463f, 1676f)))))), vec4<bool>(var_0.x, firstTrailingBit(-19390i) == firstTrailingBit(5208i), !var_1, any(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_0.x, var_1, var_0.x), vec3<bool>(var_1, false, true))))));
}

fn func_1(arg_0: bool) -> vec2<u32> {
    global2 = array<vec3<f32>, 21>();
    var var_0 = !all(vec2<bool>(true, all(vec3<bool>(arg_0, arg_0, false))));
    let var_1 = func_2();
    let var_2 = ~(~var_1.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(var_1.c.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c.d - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(498f, var_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.c.d))), true))));
    return ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~var_1.c.a.yx), ~u_input.d.zy, vec2<u32>(1u, 8106u)), var_1.c.a.yx);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_add_u32(24555u, 94215u);
    let var_1 = _wgslsmith_f_op_f32(323f + 382f);
    global1 = array<vec4<u32>, 32>();
    let var_2 = vec4<u32>(u_input.b, ~arg_0, ~arg_1.x, u_input.d.x);
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2324i), vec2<i32>(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_2.x, 2665u, 1u) | vec4<u32>(22619u, u_input.a, 22743u, var_2.x), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 32u)]) % 32u), _wgslsmith_mult_i32(reverseBits(~2147483647i), 1i)));
    return var_3.x >> ((u_input.c.x | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(64507u), 0u), 33411u, u_input.d.x | firstTrailingBit(289u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 21>();
    let var_0 = _wgslsmith_mult_i32(func_4(abs(~u_input.b), min(func_1(select(true, false, false)), select(~vec2<u32>(u_input.d.x, u_input.c.x), ~vec2<u32>(3170u, 58958u), true))), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(12996i, 1i)), -48330i), ~firstTrailingBit(0i)));
    let var_1 = vec2<bool>(false, firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(31868u, u_input.b, 37324u, 70225u), vec4<u32>(u_input.a, 4294967295u, u_input.b, 0u))) <= (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.wyx, u_input.d.xxy), ~u_input.d.x) << (~u_input.b % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1144f, -109f, 1809f) * vec4<f32>(-1000f, 274f, -545f, 1450f))))) * vec4<f32>(_wgslsmith_f_op_f32(step(-458f, _wgslsmith_f_op_f32(sign(906f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-472f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1620f)), _wgslsmith_f_op_f32(410f * -864f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-287f, 581f)) - _wgslsmith_f_op_f32(-720f - 916f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2083f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(167f + 176f)))), _wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f - -349f) - _wgslsmith_f_op_f32(f32(-1f) * -340f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1071f)) + _wgslsmith_f_op_f32(-1f))));
    let var_3 = var_2.x;
    global2 = array<vec3<f32>, 21>();
    let var_4 = Struct_3(-min(0i, ~(-2147483647i)), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(~(~var_4.b.c), ~select(4294967295u, var_4.b.a.x, var_1.x)), u_input.b), -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_4.a, -9502i, var_0, var_4.a), vec4<i32>(0i, -1i, 2190i, var_4.a)) << (u_input.d % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 18101i, -9127i, var_0), vec4<i32>(var_0, 0i, -1i, var_4.a) ^ vec4<i32>(15560i, 4804i, -1i, 38572i))), var_0, -_wgslsmith_mod_vec2_i32(-vec2<i32>(var_4.a, 1i), vec2<i32>(var_4.a, var_0) << (vec2<u32>(20519u, 88486u) % vec2<u32>(32u))) ^ firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(var_4.a, -72212i), vec2<i32>(0i, var_4.a) ^ vec2<i32>(var_0, var_4.a))));
}

