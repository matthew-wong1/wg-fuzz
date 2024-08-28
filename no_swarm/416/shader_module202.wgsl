struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(-26510i, -3011i, 2147483647i, 0i), false, Struct_1(-1i, 7154i, vec3<f32>(-282f, 689f, -391f)), Struct_1(-2705i, 53195i, vec3<f32>(-504f, -892f, -1453f))), Struct_2(vec4<i32>(2147483647i, 18357i, 0i, 1i), false, Struct_1(-11893i, 2147483647i, vec3<f32>(115f, 755f, 1000f)), Struct_1(1i, 1i, vec3<f32>(-1196f, 782f, -115f))), Struct_2(vec4<i32>(i32(-2147483648), -11045i, -1i, -745i), false, Struct_1(0i, -1159i, vec3<f32>(441f, 741f, 348f)), Struct_1(2147483647i, 8459i, vec3<f32>(179f, 562f, 183f))), Struct_2(vec4<i32>(42854i, 0i, -1i, -10970i), true, Struct_1(2147483647i, -39977i, vec3<f32>(2392f, -1089f, -481f)), Struct_1(0i, -1i, vec3<f32>(-1467f, 956f, 1000f))), Struct_2(vec4<i32>(6343i, i32(-2147483648), -2391i, i32(-2147483648)), false, Struct_1(-76842i, -16769i, vec3<f32>(-176f, 345f, 459f)), Struct_1(15763i, -50698i, vec3<f32>(-526f, 706f, -251f))), Struct_2(vec4<i32>(0i, 25845i, -6149i, 8450i), true, Struct_1(2147483647i, 17524i, vec3<f32>(-1067f, -431f, -1065f)), Struct_1(0i, i32(-2147483648), vec3<f32>(2631f, -612f, 1050f))), Struct_2(vec4<i32>(1i, -1i, 73996i, -1i), false, Struct_1(-7326i, 14267i, vec3<f32>(540f, 1173f, -330f)), Struct_1(-35455i, 1i, vec3<f32>(-1408f, -672f, -669f))), Struct_2(vec4<i32>(-1i, 2147483647i, 19078i, 1i), false, Struct_1(-1i, 0i, vec3<f32>(3330f, 598f, 1134f)), Struct_1(-1i, 63364i, vec3<f32>(128f, 943f, 474f))), Struct_2(vec4<i32>(0i, 49576i, -1i, 2147483647i), false, Struct_1(-43112i, 0i, vec3<f32>(-147f, -1911f, 661f)), Struct_1(i32(-2147483648), -9074i, vec3<f32>(-1000f, -847f, -576f))), Struct_2(vec4<i32>(-1i, 43918i, 1i, 17013i), true, Struct_1(2147483647i, i32(-2147483648), vec3<f32>(-416f, -1736f, -708f)), Struct_1(2147483647i, 2147483647i, vec3<f32>(-873f, 1887f, -912f))), Struct_2(vec4<i32>(60367i, 2147483647i, 1i, 1i), false, Struct_1(0i, 1i, vec3<f32>(-1769f, -1000f, 799f)), Struct_1(-1i, 13192i, vec3<f32>(1010f, 812f, -882f))), Struct_2(vec4<i32>(-12855i, 40013i, -1i, i32(-2147483648)), false, Struct_1(2147483647i, 1i, vec3<f32>(-368f, -2445f, -1418f)), Struct_1(-8422i, 2147483647i, vec3<f32>(-1167f, -425f, 1080f))), Struct_2(vec4<i32>(42940i, i32(-2147483648), 4356i, i32(-2147483648)), true, Struct_1(0i, 0i, vec3<f32>(340f, -497f, -797f)), Struct_1(14816i, -1i, vec3<f32>(155f, 1003f, 155f))), Struct_2(vec4<i32>(35071i, 12032i, -57421i, 712i), false, Struct_1(51264i, -1i, vec3<f32>(-187f, -794f, 1385f)), Struct_1(2147483647i, -32266i, vec3<f32>(-1433f, 1313f, 209f))), Struct_2(vec4<i32>(2147483647i, 24111i, 2147483647i, 1i), false, Struct_1(2147483647i, i32(-2147483648), vec3<f32>(427f, 156f, 746f)), Struct_1(0i, 2147483647i, vec3<f32>(710f, 2609f, -622f))), Struct_2(vec4<i32>(-12597i, -17720i, i32(-2147483648), 18786i), true, Struct_1(2147483647i, 1i, vec3<f32>(797f, -1000f, 1295f)), Struct_1(1i, 2147483647i, vec3<f32>(468f, 1000f, -1486f))));

var<private> global1: array<i32, 23> = array<i32, 23>(1i, 62840i, 33159i, 47813i, i32(-2147483648), 2147483647i, 27628i, 2147483647i, -1i, -16954i, 1i, 51832i, -13493i, i32(-2147483648), 2147483647i, 17861i, -35817i, -1i, -55309i, 2147483647i, 1i, -26122i, -28933i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    global1 = array<i32, 23>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(exp2(arg_0)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, arg_0)), -173f, true))) * 431f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), 1001f)), _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * arg_0)))))));
    global0 = array<Struct_2, 16>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-var_0))))));
    return abs(~arg_1);
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, arg_0, _wgslsmith_dot_vec4_u32((~vec4<u32>(arg_0, arg_0, arg_0, arg_0) & firstTrailingBit(vec4<u32>(arg_0, arg_0, arg_0, arg_0))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_0, arg_0, arg_0), vec4<u32>(4294967295u, arg_0, 0u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 53849u, arg_0, arg_0) ^ vec4<u32>(63606u, 16753u, arg_0, 7603u), ~(vec4<u32>(arg_0, 1u, arg_0, arg_0) | vec4<u32>(arg_0, 0u, 1u, arg_0)), func_3(_wgslsmith_div_f32(1363f, -1033f), ~vec4<u32>(arg_0, arg_0, 1u, arg_0))))), 23u)];
    global0 = array<Struct_2, 16>();
    var var_1 = global0[_wgslsmith_index_u32(~arg_0, 16u)];
    var var_2 = var_1.c;
    var_0 = firstTrailingBit(~(~var_2.a));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> Struct_1 {
    global1 = array<i32, 23>();
    var var_0 = Struct_3(Struct_1(12349i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -20072i), select(global1[_wgslsmith_index_u32(18821u, 23u)] << (4294967295u % 32u), 30519i, true)), vec3<f32>(_wgslsmith_f_op_f32(max(-122f, _wgslsmith_f_op_f32(abs(-510f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-522f - 554f), _wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-916f, -1275f)) - -1378f))));
    var var_1 = vec3<u32>(~firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 0u, 1u))), _wgslsmith_clamp_u32(~0u, abs(~(~1u)), ~1u), 1u);
    var var_2 = firstTrailingBit(firstTrailingBit(~(-(vec3<i32>(var_0.a.b, -16029i, 27840i) & vec3<i32>(var_0.a.a, u_input.a, -1i)))));
    var_2 = vec3<i32>(35401i, _wgslsmith_add_i32((-var_2.x << (~var_1.x % 32u)) & 1i, var_2.x), reverseBits(var_0.a.a));
    return var_0.a;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f * _wgslsmith_f_op_f32(trunc(2110f))) + 1146f)));
    let var_1 = -35810i;
    global0 = array<Struct_2, 16>();
    var var_2 = func_4(func_2(43381u), false, func_2(1u).x);
    global0 = array<Struct_2, 16>();
    return 93022u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(97377u << (~_wgslsmith_sub_u32(func_1(), ~abs(1u)) % 32u), 16u)];
    let var_1 = Struct_1(u_input.a, ~reverseBits(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], -2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.x, var_0.d.c.x, -1287f) - vec3<f32>(_wgslsmith_f_op_f32(var_0.c.c.x - _wgslsmith_div_f32(-757f, var_0.c.c.x)), -236f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1157f - var_0.d.c.x), _wgslsmith_f_op_f32(max(-627f, var_0.d.c.x))))));
    global0 = array<Struct_2, 16>();
    global1 = array<i32, 23>();
    var var_2 = ~vec2<u32>(1u, 1u) >> (_wgslsmith_add_vec2_u32((vec2<u32>(44951u, 35387u) & func_3(var_0.c.c.x, vec4<u32>(37629u, 1u, 11807u, 82923u)).xy) ^ vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(func_3(var_1.c.x, vec4<u32>(1376u, 1u, 0u, 0u)).x, min(4294967295u, 38862u)), vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    var_2 = vec2<u32>(reverseBits(1u), countOneBits(4294967295u));
    let var_3 = min(vec2<i32>(2147483647i, u_input.a), -vec2<i32>(-2147483647i, u_input.a));
    let var_4 = _wgslsmith_mult_i32(-5330i, -1i);
    let var_5 = countOneBits(_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_mod_vec4_i32(var_0.a ^ vec4<i32>(-2147483647i, var_1.a, u_input.a, 56188i), abs(vec4<i32>(-1i, 14811i, var_1.a, var_0.c.b)))) | (var_1.b << (~abs(var_2.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), _wgslsmith_f_op_f32(-var_1.c.x)), var_0.a, var_2.x, 0u & _wgslsmith_add_u32(var_2.x, 4294967295u), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_4, 0i), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2.x, 23u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], var_3.x), var_3, var_3)), var_3));
}

