struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(19771u, 832f, -10192i)), Struct_3(Struct_1(0u, -1000f, 1i)), Struct_3(Struct_1(45258u, 138f, 0i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = !vec4<bool>(false, u_input.e.x > u_input.e.x, u_input.d != -37672i, all(vec3<bool>(arg_0.x, arg_0.x, false)));
    var var_2 = -2147483647i;
    var var_3 = ((_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 4250u)) >> (_wgslsmith_sub_u32(~u_input.a.x, select(u_input.c, 48108u, arg_0.x)) % 32u)) >> (min(u_input.c, ~20754u) % 32u)) != u_input.c;
    var var_4 = Struct_1(u_input.b.x << (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 206f)), 291f)), reverseBits(firstTrailingBit(-_wgslsmith_div_i32(2147483647i, -2147483647i))));
    return 31864u;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstTrailingBit(64681u), u_input.b.x), 3u)];
    let var_1 = arg_1;
    global0 = array<Struct_3, 3>();
    var_0 = Struct_3(Struct_1(~(arg_1.b.x & 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1177f, 922f))), min(-arg_1.d.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(-10352i, u_input.d), u_input.e.x))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-754f, var_0.a.b)))), -1004f, 1433f);
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    let var_0 = Struct_3(arg_0.a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(0u != (u_input.a.x & select(0u, 17850u, arg_1.x)), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1476f, 411f, arg_0.a.b), vec3<f32>(-891f, -1000f, -1410f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, 1027f, var_0.a.b) * vec3<f32>(var_0.a.b, 2405f, arg_0.a.b))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(40492u, 4294967295u)), 4294967295u, ~var_0.a.a, func_3(vec4<bool>(false, arg_1.x, false, true))), -863f, vec3<i32>(~var_0.a.c, -2147483647i, ~(-29311i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2346f, 239f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(360f, -1000f, 1920f, 1020f) + vec4<f32>(arg_0.a.b, 144f, arg_0.a.b, var_0.a.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, -1000f, var_0.a.b, -1318f) - vec4<f32>(397f, arg_0.a.b, var_0.a.b, 1398f)))), min(select(firstLeadingBit(u_input.b), u_input.b, var_0.a.c > arg_0.a.c), ~(u_input.b << (vec3<u32>(36135u, var_0.a.a, 16172u) % vec3<u32>(32u)))))), _wgslsmith_f_op_f32(-var_0.a.b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(~(-13081i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(40679i, u_input.e.x, arg_0.x) << (~vec3<u32>(36424u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -6763i, 41766i) & arg_1.ywx, firstTrailingBit(~vec3<i32>(7267i, -7952i, arg_0.x)))));
    let var_1 = select(vec4<bool>(false, true, true, (any(vec2<bool>(true, false)) | true) | (_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(1u, 826f, -17914i)), vec2<bool>(true, false))) > _wgslsmith_f_op_f32(-518f + -465f))), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, (false && select(false, true, true)) & true, true));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(360f, _wgslsmith_f_op_f32(f32(-1f) * -127f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -632f), -451f, true))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -735f) + _wgslsmith_f_op_f32(round(-140f)))))));
    global0 = array<Struct_3, 3>();
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, -3124f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -506f)), u_input.b.x < 68283u)), vec2<f32>(_wgslsmith_f_op_f32(-555f + var_2.x), _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - 255f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 325f), vec2<f32>(var_2.x, 1981f))))));
    return true;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = Struct_2(any(select(!(!vec2<bool>(arg_3, false)), vec2<bool>(u_input.d == -1i, arg_0 <= arg_0), false)), any(!vec4<bool>(true, arg_3, arg_1.x > 0u, true)), u_input.d);
    let var_1 = vec2<bool>(func_1(vec3<i32>(u_input.d, 1i, _wgslsmith_sub_i32(u_input.e.x, -8842i)) >> (vec3<u32>(u_input.b.x, ~u_input.b.x, 36288u << (arg_1.x % 32u)) % vec3<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.e), u_input.e << (vec2<u32>(49795u, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.c), select(vec2<i32>(u_input.d, var_0.c), u_input.e, var_0.a)), 1i, var_0.c)), true);
    var var_2 = 946f;
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~reverseBits(vec3<i32>(u_input.e.x, u_input.d, var_0.c)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -27024i, -2147483647i)) & ~vec3<i32>(var_0.c, u_input.e.x, -5776i), abs(vec3<i32>(var_0.c, var_0.c, var_0.c) ^ vec3<i32>(7868i, -18443i, 3271i)))), vec3<i32>(var_0.c, abs(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.c, u_input.d, -2147483647i), vec4<i32>(-9613i, -27831i, var_0.c, -12752i)))), u_input.e.x), firstLeadingBit(vec3<i32>(var_0.c, reverseBits(var_0.c), u_input.e.x) ^ -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, -2147483647i, u_input.e.x), vec3<i32>(u_input.d, 2147483647i, -2147483647i))));
    var var_4 = Struct_2(func_1(vec3<i32>(~(var_3.x & var_0.c), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.e.x, var_0.c), _wgslsmith_div_i32(-1i, 13533i), -var_3.x), var_0.c), abs(~(-vec4<i32>(87586i, 0i, 25851i, u_input.d)))), arg_3, ~firstLeadingBit(select(~11307i, var_0.c, true)));
    return 76447u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.c, _wgslsmith_mod_u32(1u, func_5(_wgslsmith_div_f32(665f, 361f), vec3<u32>(23600u, 28107u, 4294967295u) | (vec3<u32>(583u, 4294967295u, 1025u) & u_input.b), 0u, func_1(vec3<i32>(u_input.e.x, u_input.d, -3647i), vec4<i32>(u_input.e.x, u_input.d, u_input.d, u_input.d)) & true)), u_input.c & ~_wgslsmith_mult_u32(3829u ^ u_input.c, u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~u_input.b.x), u_input.c), 15433u));
    let var_1 = u_input.d;
    let var_2 = ~_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e.x, 15735i, var_1), reverseBits(vec4<i32>(u_input.e.x, -13510i, var_1, -38676i))), 42049i);
    let var_3 = !(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), !(var_0.x >= 1u)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(394f - -923f), _wgslsmith_f_op_f32(round(1550f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-879f, 710f, -1624f) + vec3<f32>(-1301f, 536f, -982f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1482f, 524f, 303f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -501f, -472f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, -1000f, -514f)))))), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(146087u, u_input.b.x)), ~(33394u << (u_input.a.x % 32u)), 28177u, u_input.a.x ^ abs(firstLeadingBit(1u))), 456f, ~vec3<i32>(_wgslsmith_div_i32(-40483i, ~(-2147483647i)), u_input.d, -abs(30679i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1000f), vec2<f32>(450f, 1050f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, -488f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 943f), vec2<f32>(-478f, -234f), var_3.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-762f, 1242f), vec2<f32>(-435f, 214f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-568f, 814f) + vec2<f32>(565f, 418f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(-vec3<i32>(~var_2, -7793i, _wgslsmith_clamp_i32(-2147483647i, var_4.d.x, var_2)), -vec3<i32>(-23848i, _wgslsmith_add_i32(-1i, u_input.e.x), var_1)), var_4.d, 42741i);
}

