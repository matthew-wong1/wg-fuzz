struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1366f, 1150f, -1715f, 1080f), vec4<f32>(-226f, 1128f, -515f, -784f), vec4<f32>(-190f, 771f, -830f, 1000f), vec4<f32>(724f, -1542f, 546f, -1995f), vec4<f32>(-109f, -1287f, -1000f, 446f), vec4<f32>(641f, 1000f, -1046f, 902f), vec4<f32>(815f, 1231f, 723f, -495f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = vec3<i32>((u_input.a ^ 20829i) | u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, firstTrailingBit(u_input.a), 1i), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(33207i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)), vec4<i32>(0i, u_input.a, -1i, u_input.a) << (vec4<u32>(global0.c, arg_2.a, arg_2.b, 4294967295u) % vec4<u32>(32u))), -2147483647i)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -25904i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)) ^ 50694i, 24658i), firstLeadingBit(~(-1i))));
    global1 = array<vec4<f32>, 7>();
    global1 = array<vec4<f32>, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 561f)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.d.yz, global0.d.yx)) * global0.d.zy), !(!arg_2.c.x), 0u | arg_2.e.x, vec3<f32>(_wgslsmith_div_f32(arg_2.d, 581f), -788f, arg_2.d));
    return global0.d.yy;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> u32 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.d.yz)) + _wgslsmith_f_op_vec2_f32(-global0.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, global0.a.x, Struct_2(46701u, 0u, vec2<bool>(false, true), global0.a.x, vec2<u32>(global0.c, 1u)), Struct_1(vec2<bool>(global0.b, false), true))) - vec2<f32>(arg_1, arg_1))), !(1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.x), ~arg_2.xw)), _wgslsmith_mult_u32(~(~(~arg_3.x)), 44682u), vec3<f32>(arg_1, -500f, arg_1));
    let var_0 = 276f;
    global1 = array<vec4<f32>, 7>();
    global0 = Struct_3(global0.d.yz, !any(vec2<bool>(any(vec4<bool>(false, true, global0.b, global0.b)), !global0.b)), arg_2.x, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(global0.b & arg_0, _wgslsmith_f_op_f32(f32(-1f) * -589f), Struct_2(arg_3.x, 75507u, vec2<bool>(true, true), 133f, arg_2.wy), Struct_1(vec2<bool>(false, global0.b), global0.b))).x)), 1878f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2043f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = Struct_1(vec2<bool>(~18011i > -_wgslsmith_mod_i32(-46534i, u_input.a), any(vec3<bool>(all(vec3<bool>(global0.b, true, global0.b)), !arg_0, any(vec3<bool>(true, global0.b, true))))), true & (_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 15343i), vec3<i32>(-31387i, -1i, u_input.a) << (vec3<u32>(1u, 4294967295u, arg_3.x) % vec3<u32>(32u))) < _wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(28482i, 2147483647i, u_input.a, -1i), vec4<i32>(-2147483647i, -1i, 1i, u_input.a)))));
    return ~arg_2.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(global0.d));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1080f, _wgslsmith_f_op_f32(f32(-1f) * -1699f))), _wgslsmith_f_op_f32(exp2(var_0.x)) > var_0.x, _wgslsmith_add_u32(arg_2, 4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.d, vec3<f32>(arg_0.d, 1460f, -1000f))) - _wgslsmith_div_vec3_f32(global0.d, vec3<f32>(_wgslsmith_f_op_f32(step(1153f, -1825f)), _wgslsmith_f_op_f32(-1961f + -1000f), _wgslsmith_f_op_f32(-arg_0.d)))));
    var var_1 = select(vec4<bool>(false, !arg_1.x, false, arg_0.c.x), !select(select(select(vec4<bool>(arg_1.x, false, false, global0.b), vec4<bool>(true, arg_1.x, global0.b, false), arg_1.x), select(vec4<bool>(global0.b, false, true, global0.b), vec4<bool>(arg_0.c.x, global0.b, true, arg_0.c.x), vec4<bool>(arg_1.x, true, true, false)), !arg_0.c.x), vec4<bool>(!global0.b, any(arg_0.c), true, any(vec4<bool>(true, false, true, true))), !global0.b), vec4<bool>((true || !arg_0.c.x) & all(vec3<bool>(global0.b, arg_0.c.x, arg_1.x)), !all(!vec3<bool>(true, arg_1.x, arg_1.x)), !arg_1.x, select(true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 36195u, arg_2, 0u), vec4<u32>(16192u, global0.c, 3786u, arg_2)) < ~4294967295u)));
    var_1 = vec4<bool>(var_1.x, !(!all(select(vec2<bool>(var_1.x, arg_0.c.x), arg_1, true))), any(!(!vec4<bool>(var_1.x, false, true, false))), true);
    var var_2 = arg_1.x;
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = func_4(Struct_2(func_2(true, _wgslsmith_f_op_f32(round(1000f)), abs(vec4<u32>(global0.c, arg_1.e.x, global0.c, 37286u)), vec2<u32>(69126u, global0.c)), reverseBits(_wgslsmith_dot_vec2_u32(arg_1.e | vec2<u32>(53303u, 0u), _wgslsmith_add_vec2_u32(arg_1.e, arg_1.e))), select(!select(arg_1.c, vec2<bool>(global0.b, global0.b), global0.b), select(arg_1.c, select(vec2<bool>(false, global0.b), vec2<bool>(false, true), false), any(vec3<bool>(false, global0.b, global0.b))), !arg_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2688f)))), arg_1.e), !vec2<bool>(!all(vec2<bool>(false, true)), !(arg_1.c.x | true)), min(_wgslsmith_add_u32(31497u, func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -732f), ~vec4<u32>(arg_2, arg_1.b, 78612u, arg_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a, 0u), vec2<u32>(1u, global0.c)))), ~(arg_1.e.x | 13499u)));
    global1 = array<vec4<f32>, 7>();
    global1 = array<vec4<f32>, 7>();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-598f)), _wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-arg_1.d)) - vec2<f32>(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -143f)))), ((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -10253i, -7043i), vec4<i32>(12978i, u_input.a, u_input.a, u_input.a)) == _wgslsmith_sub_i32(u_input.a, u_input.a)) || !(-1582f >= arg_1.d)) && any(vec4<bool>(var_0.c.x, var_0.c.x | global0.b, global0.b || arg_1.c.x, global0.b)), ~_wgslsmith_div_u32(23891u, 4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d * _wgslsmith_f_op_vec3_f32(max(global0.d, vec3<f32>(arg_1.d, -1437f, global0.d.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2177f, _wgslsmith_f_op_f32(-488f * var_0.d), arg_0.x) * _wgslsmith_f_op_vec3_f32(-global0.d)), !vec3<bool>(false, all(arg_1.c), arg_1.c.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(arg_1.e.x, 7u)], vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(f32(-1f) * -2583f)), 1000f, -1000f, var_0.d), select(!vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(true, true, true, true), var_0.c.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(global0.c), 7u)]), global1[_wgslsmith_index_u32(select(~0u, ~arg_2, global0.d.x == var_0.d), 7u)]))));
    return Struct_1(arg_1.c, all(select(!vec3<bool>(true, global0.b, false), !vec3<bool>(arg_1.c.x, var_0.c.x, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - global0.d.x) + _wgslsmith_f_op_f32(min(1000f, global0.a.x))))), Struct_2(global0.c, 68667u, select(select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), !vec2<bool>(true, global0.b)), vec2<bool>(!global0.b, all(vec4<bool>(true, true, global0.b, true))), select(!vec2<bool>(global0.b, true), select(vec2<bool>(global0.b, true), vec2<bool>(true, false), vec2<bool>(true, global0.b)), !vec2<bool>(global0.b, false))), 455f, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c, 32794u), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.c, 113054u), vec2<u32>(6868u, 35100u))) & _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(20727u, 50749u)), ~vec2<u32>(global0.c, global0.c))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(9483u, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_mult_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -66711i), ~vec2<i32>(-1i, u_input.a)), ~u_input.a, ~u_input.a), vec4<i32>(-abs(26936i), ~select(36501i, 189i, global0.b), firstLeadingBit(18972i) >> (~global0.c % 32u), _wgslsmith_sub_i32(abs(-2147483647i), u_input.a))));
}

