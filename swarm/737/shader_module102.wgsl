struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(0u, 129098u, 0u, 7763u), vec3<u32>(51479u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 33750u, 54927u), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<u32>(0u, 12951u, 43775u, 1u), vec3<u32>(13391u, 64020u, 91888u)), Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), vec3<u32>(73975u, 1811u, 4294967295u)), Struct_1(vec4<u32>(1u, 867u, 0u, 38522u), vec3<u32>(4294967295u, 76122u, 1u)), Struct_1(vec4<u32>(1u, 10987u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u)), Struct_1(vec4<u32>(20807u, 93952u, 28339u, 85625u), vec3<u32>(0u, 10761u, 0u)), Struct_1(vec4<u32>(0u, 1u, 30864u, 1u), vec3<u32>(71280u, 26857u, 1u)), Struct_1(vec4<u32>(4294967295u, 44699u, 0u, 1u), vec3<u32>(65693u, 4294967295u, 44452u)), Struct_1(vec4<u32>(4221u, 1u, 109843u, 55018u), vec3<u32>(0u, 1u, 103302u)), Struct_1(vec4<u32>(1u, 16477u, 4294967295u, 17485u), vec3<u32>(17275u, 4294967295u, 1u)), Struct_1(vec4<u32>(9773u, 1u, 0u, 41149u), vec3<u32>(4294967295u, 52322u, 1u)), Struct_1(vec4<u32>(41851u, 0u, 9949u, 24017u), vec3<u32>(1u, 62794u, 9043u)), Struct_1(vec4<u32>(28204u, 63233u, 4294967295u, 12289u), vec3<u32>(1u, 1u, 3731u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec4<u32>(49412u, 4294967295u, 62878u, 0u), vec3<u32>(0u, 20129u, 0u)), Struct_1(vec4<u32>(71919u, 1u, 0u, 13926u), vec3<u32>(1u, 0u, 6954u)), Struct_1(vec4<u32>(78747u, 4294967295u, 29012u, 23785u), vec3<u32>(15921u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<u32>(1u, 1u, 42853u)), Struct_1(vec4<u32>(6702u, 4146u, 15544u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 16774u), vec3<u32>(85387u, 32016u, 1u)), Struct_1(vec4<u32>(2838u, 0u, 15032u, 4294967295u), vec3<u32>(4294967295u, 1u, 32645u)), Struct_1(vec4<u32>(34809u, 15795u, 109870u, 4294967295u), vec3<u32>(118318u, 1u, 46u)), Struct_1(vec4<u32>(78326u, 69752u, 52671u, 1u), vec3<u32>(1218u, 38825u, 44188u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 42773u, 36140u), vec3<u32>(83507u, 54241u, 4294967295u)), Struct_1(vec4<u32>(18807u, 44759u, 26747u, 48851u), vec3<u32>(4294967295u, 69632u, 59678u)), Struct_1(vec4<u32>(1u, 2476u, 92367u, 57875u), vec3<u32>(47869u, 35953u, 16950u)));

var<private> global1: i32 = 1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(3900i >> (u_input.a.x % 32u)), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -8068i, 3387i, -2147483647i), vec4<i32>(-2147483647i, 0i, 1i, 0i)))), 1i);
    global1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_0), 37205i) << (abs(abs(u_input.a.yy)) % vec2<u32>(32u)), select(vec2<i32>(var_0 | 44606i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 2147483647i, 31366i), vec3<i32>(var_0, -2147483647i, var_0))), vec2<i32>(17280i, -93921i), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-179f + 519f), -845f))))) + _wgslsmith_f_op_f32(-1000f + -197f));
    var var_2 = firstTrailingBit(abs(select(vec3<u32>(u_input.a.x, 0u, 5811u) ^ ~u_input.a, u_input.a, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), u_input.a.x < 80347u))));
    var var_3 = Struct_3(~vec3<u32>(u_input.a.x, ~25898u, _wgslsmith_sub_u32(52203u, _wgslsmith_mod_u32(4294967295u, u_input.a.x))), 1u, ~_wgslsmith_sub_u32(var_2.x, ~1u));
    return vec3<u32>(u_input.a.x, ~_wgslsmith_mod_u32(firstTrailingBit(max(79484u, u_input.a.x)), ~4294967295u), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.c, 7781u), ~u_input.a.x));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = 23611u;
    var var_1 = (-2147483647i | countOneBits(_wgslsmith_mult_i32(firstLeadingBit(0i), arg_0 << (4294967295u % 32u)))) >> (max(1u, 4294967295u) % 32u);
    global0 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f * -1192f)))), 1f));
    let var_3 = Struct_1(~select(select(vec4<u32>(1u, u_input.a.x, 46839u, u_input.a.x), vec4<u32>(41807u, 17212u, 1u, u_input.a.x), vec4<bool>(arg_1.x, true, false, arg_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(52912u, var_0, 25166u, var_0), vec4<u32>(u_input.a.x, 0u, var_0, 4294967295u)), select(arg_1, arg_1, vec4<bool>(false, false, arg_1.x, arg_1.x))) >> ((vec4<u32>(_wgslsmith_mult_u32(var_0, 0u), u_input.a.x, 2195u ^ u_input.a.x, abs(1u)) >> (~(~vec4<u32>(146346u, 1u, 4294967295u, 46102u)) % vec4<u32>(32u))) % vec4<u32>(32u)), func_3());
    return Struct_2(!any(vec2<bool>(false, false)) != any(select(vec3<bool>(arg_1.x, true, arg_1.x), arg_1.zwy, arg_1.xwy)), !arg_1.x, true, countOneBits(~u_input.a.x) > var_0, global0[_wgslsmith_index_u32(~var_3.a.x, 27u)]);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global0 = array<Struct_1, 27>();
    let var_0 = ~arg_2.e.b;
    let var_1 = _wgslsmith_sub_u32(abs(min(u_input.a.x, 42585u) << (~25432u % 32u)) | ~0u, 37288u);
    global0 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, arg_2.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1363f)))));
    return arg_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> StorageBuffer {
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1633f, 1000f, -837f) + vec3<f32>(-333f, 129f, 1011f)), func_2(-31671i, vec4<bool>(arg_3, true, arg_3, true)), _wgslsmith_div_vec2_i32(vec2<i32>(-67205i, 67703i), vec2<i32>(6344i, 6729i)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))), _wgslsmith_f_op_f32(func_4(select(i32(-1i) * -1i, -1i, arg_3), vec3<f32>(-524f, _wgslsmith_div_f32(1572f, 249f), _wgslsmith_div_f32(-1000f, 1000f)), func_2(-2147483647i << (arg_0 % 32u), vec4<bool>(true, arg_3, arg_3, false)), vec2<i32>(1i, _wgslsmith_sub_i32(-43267i, 22891i)))))));
    global0 = array<Struct_1, 27>();
    let var_1 = -39083i;
    global1 = 0i;
    return StorageBuffer(-vec3<i32>(var_1, abs(var_1), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1, 2147483647i), max(var_1, var_1), select(29782i, -8118i, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-876f, _wgslsmith_f_op_f32(max(493f, 1858f)))) - 425f)), min(~vec3<i32>(abs(-10098i), _wgslsmith_add_i32(var_1, var_1), reverseBits(0i)), _wgslsmith_clamp_vec3_i32(reverseBits(reverseBits(vec3<i32>(-2147483647i, var_1, -46244i))), ~vec3<i32>(1i, 10950i, var_1) | -vec3<i32>(var_1, var_1, var_1), vec3<i32>(-21214i, -1i, countOneBits(var_1)))), abs(~var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2087f, 667f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(802f, 1900f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(332f, -368f), vec2<f32>(985f, -456f), vec2<bool>(arg_3, false)))), true)) + vec2<f32>(_wgslsmith_f_op_f32(sign(1081f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(244f, -388f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a.x, Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), ~countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u) ^ u_input.a, _wgslsmith_div_vec3_u32(u_input.a, u_input.a))), _wgslsmith_div_vec4_u32(~vec4<u32>(abs(u_input.a.x), firstLeadingBit(31738u), u_input.a.x, 0u), ~select(vec4<u32>(u_input.a.x, 5316u, 29048u, u_input.a.x), vec4<u32>(0u, 20466u, 4294967295u, u_input.a.x), any(vec3<bool>(false, true, false)))), true);
}

