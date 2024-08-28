struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-472f, 469f, -319f), vec3<f32>(-895f, 576f, -1000f), vec3<f32>(1000f, -1754f, 1765f), vec3<f32>(1035f, -1088f, 347f), vec3<f32>(-420f, -1596f, -945f), vec3<f32>(225f, 443f, 1000f), vec3<f32>(-914f, 577f, -1000f), vec3<f32>(679f, -678f, 277f), vec3<f32>(-2193f, -857f, 1122f), vec3<f32>(-1950f, -1696f, -450f), vec3<f32>(-147f, -857f, 989f), vec3<f32>(-1430f, 603f, 321f), vec3<f32>(221f, 1103f, -380f), vec3<f32>(990f, 1000f, 445f), vec3<f32>(704f, 464f, -1645f), vec3<f32>(-251f, 267f, 631f), vec3<f32>(402f, -201f, -1048f), vec3<f32>(-258f, 1000f, 1144f));

var<private> global1: array<Struct_4, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), false | (-51085i < u_input.b)));
    let var_1 = Struct_4(-countOneBits(reverseBits(-2147483647i)));
    var var_2 = vec4<u32>(firstTrailingBit(~select(4294967295u, 1u, true)), 1u | min(firstTrailingBit(28470u), ~20443u), _wgslsmith_clamp_u32(0u, countOneBits(~_wgslsmith_mult_u32(1u, 1u)), select(_wgslsmith_mod_u32(60204u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 10884u), vec2<u32>(4294967295u, 75813u))), ~(~0u), any(vec2<bool>(false, true)) | true)), ~44315u);
    var var_3 = _wgslsmith_f_op_f32(abs(1f));
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(~countOneBits(u_input.d.x), ~u_input.b >> (4294967295u % 32u), ~(var_1.a | 2147483647i), 16889i), _wgslsmith_add_vec4_i32(vec4<i32>(~min(u_input.d.x, 17544i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.a), vec2<i32>(1i, 6280i)) & -2147483647i, 1i, ~(~1i)), firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.a, 2147483647i, 0i, var_1.a), vec4<i32>(-6825i, -2147483647i, 11953i, var_1.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(vec3<i32>(arg_3.a.b, countOneBits(func_3()), -18274i), reverseBits(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25731u, 20976u, 4294967295u, 55626u), vec4<u32>(39569u, 1u, 40007u, 72650u)), ~1u, 54294u))), vec4<f32>(arg_0.a, arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a)))), 470f));
    var var_1 = arg_0;
    global1 = array<Struct_4, 21>();
    global1 = array<Struct_4, 21>();
    global0 = array<vec3<f32>, 18>();
    return ~(-_wgslsmith_mult_i32(arg_0.b, (var_0.a.x << (var_0.b.x % 32u)) << (var_0.b.x % 32u)));
}

fn func_1() -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1003f, 706f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(857f)), _wgslsmith_f_op_f32(select(-751f, -516f, true))))), min(51123i, -u_input.c), -40192i));
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(-1i ^ func_2(Struct_1(var_0.a.a, 4351i, -81999i), var_0.a.a, false, Struct_2(Struct_1(var_0.a.a, u_input.d.x, -1i))), abs(countOneBits(-2147483647i))), u_input.d.x & 72710i) | _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(1i, abs(u_input.b))), select(u_input.d, select(_wgslsmith_div_vec2_i32(vec2<i32>(-25096i, 1i), vec2<i32>(u_input.a, var_0.a.b)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(0i, u_input.b)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    let var_2 = vec4<u32>(1u, ~firstTrailingBit(62813u), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(min(16944u, 64616u), ~6887u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(0u, 0u, 0u)))), 4294967295u, ~(~1u)));
    let var_3 = global1[_wgslsmith_index_u32(27571u, 21u)];
    let var_4 = Struct_2(var_0.a);
    return all(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, false)), select(true, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 29186u > var_2.x))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    global0 = array<vec3<f32>, 18>();
    let var_0 = any(vec2<bool>(any(!vec2<bool>(false, arg_0.x)), false));
    var var_1 = vec2<u32>(~1u, 4294967295u);
    var_1 = vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, var_1.x)), vec3<u32>(_wgslsmith_sub_u32(var_1.x, 92430u), 1u, var_1.x)), ~(~vec3<u32>(34177u, 12745u, 49668u)) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_1.x, var_1.x, 4294967295u)), vec3<u32>(44677u, var_1.x, var_1.x) ^ vec3<u32>(29499u, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 0u)) % vec3<u32>(32u))));
    let var_2 = ~firstTrailingBit(min(73368u, 76907u));
    return Struct_3(vec3<i32>(~_wgslsmith_clamp_i32(u_input.b, u_input.a, 73023i) >> ((~var_1.x | var_1.x) % 32u), u_input.a, ~(-_wgslsmith_div_i32(36744i, -23707i))), (~(~vec3<u32>(4294967295u, var_2, var_1.x)) & ~vec3<u32>(0u, var_2, var_1.x)) | (~(~vec3<u32>(var_1.x, var_1.x, var_1.x)) & _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41721u, var_1.x, var_2), vec3<u32>(4294967295u, 0u, 4358u)), vec3<u32>(4294967295u, 36614u, var_2))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1433f, 231f, 815f, 2690f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, -211f, 954f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2106f, -321f, 211f, 1293f) * vec4<f32>(1770f, 2087f, -666f, 1603f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(true, func_1(), !(!all(vec2<bool>(false, true)))));
    var_0 = func_4(select(select(vec3<bool>(var_0.c.x >= -401f, true, select(false, false, false)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true), vec3<bool>(all(vec3<bool>(true, false, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false)), false), vec3<bool>(true, true, true)));
    global0 = array<vec3<f32>, 18>();
    var var_1 = global1[_wgslsmith_index_u32(var_0.b.x, 21u)];
    global1 = array<Struct_4, 21>();
    let var_2 = _wgslsmith_f_op_f32(-1731f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.c.x)), -214f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.c), func_4(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true)).c.x, ~vec2<i32>(~var_0.a.x, _wgslsmith_clamp_i32(0i, 45652i, -2147483647i) & var_1.a));
}

