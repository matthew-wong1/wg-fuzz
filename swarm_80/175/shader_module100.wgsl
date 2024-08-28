struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: vec4<f32>;

var<private> global2: f32 = -856f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(abs(u_input.c.x), u_input.c.x), -u_input.c.x, -93679i);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(4294967295u), abs(_wgslsmith_mod_u32(18989u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(4294967295u, u_input.b.x))))), 30u)], -_wgslsmith_sub_i32(~(0i << (u_input.a.x % 32u)), ~_wgslsmith_clamp_i32(u_input.c.x, 48002i, u_input.c.x)), vec2<bool>(arg_0, any(global0[_wgslsmith_index_u32(~(~u_input.b.x), 30u)])), global0[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(u_input.c, global1.x, u_input.b, vec2<bool>(arg_0 | true, false)));
    var_0 = u_input.c.x;
    global2 = -286f;
    var var_2 = Struct_1(vec3<i32>(u_input.c.x, -2147483647i, var_1.e.a.x >> (min(~9894u, 36839u) % 32u)), var_1.e.b, ~(~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, var_1.e.c.x))), select(!vec2<bool>(var_1.d.x, !arg_0), select(!vec2<bool>(true, arg_0), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), var_1.e.d, select(vec2<bool>(false, var_1.a.x), var_1.d.yw, true)), vec2<bool>(u_input.a.x <= u_input.b.x, arg_0)), false));
    return _wgslsmith_f_op_f32(203f + _wgslsmith_f_op_f32(ceil(var_2.b)));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_0.a.x)), 916f));
    let var_1 = arg_0;
    var_0 = 579f;
    let var_2 = vec4<i32>(-_wgslsmith_sub_i32(18016i, -firstLeadingBit(-11605i)), u_input.c.x, ~arg_0.b, 10529i | var_1.e.a.x);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + 968f)), global1.x, var_1.e.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-828f * 1f))));
    return select(~u_input.a, vec3<u32>(reverseBits(min(arg_0.e.c.x, min(4294967295u, u_input.b.x))), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(50427u, var_1.e.c.x, 4294967295u, 54539u), vec4<u32>(1u, u_input.b.x, 59551u, 0u) << (vec4<u32>(arg_0.e.c.x, 1u, arg_0.e.c.x, var_1.e.c.x) % vec4<u32>(32u))), _wgslsmith_clamp_u32(u_input.b.x, 1u, arg_0.e.c.x) << (~var_1.e.c.x % 32u)), 4294967295u), !(_wgslsmith_mult_i32(var_2.x, -4230i) >= -reverseBits(1i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = abs((_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.x, u_input.b.x, 1u) >> (vec4<u32>(u_input.a.x, arg_0.x, 51795u, arg_0.x) % vec4<u32>(32u)), vec4<u32>(114446u, arg_0.x, 1u, u_input.a.x)) << (vec4<u32>(arg_0.x ^ arg_2.c.x, 1u, reverseBits(4294967295u), 15591u) % vec4<u32>(32u))) >> (~firstLeadingBit(reverseBits(vec4<u32>(arg_2.c.x, u_input.a.x, arg_0.x, 0u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * -1456f), global1.x, global1.x, _wgslsmith_f_op_f32(999f * arg_2.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f));
    var var_2 = ~(~arg_0);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, -676f, global1.x, global1.x), vec4<f32>(866f, 326f, -553f, arg_2.b)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, 556f, var_1, 1000f), vec4<f32>(-1367f, arg_2.b, global1.x, 620f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1004f, _wgslsmith_f_op_f32(func_3(arg_2.d.x)), var_1, _wgslsmith_f_op_f32(2152f * global1.x)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -1094f, var_1, var_1)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(1639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), any(select(global0[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(false, arg_1, false, arg_2.d.x), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1)) - _wgslsmith_f_op_f32(exp2(arg_2.b))), global1.x));
    return Struct_2(global0[_wgslsmith_index_u32(83631u, 30u)], _wgslsmith_mult_i32(abs(u_input.c.x), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(30963i, arg_2.a.x, u_input.c.x, -2147483647i), vec4<i32>(0i, -1i, 2147483647i, arg_2.a.x)))), arg_2.d, select(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, 16878u) & 1u, 30u)], select(!global0[_wgslsmith_index_u32(39306u, 30u)], select(vec4<bool>(arg_1, false, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 30u)], false), arg_1), !(arg_2.d.x || false)), select(!(!vec4<bool>(false, arg_1, arg_1, arg_2.d.x)), !(!global0[_wgslsmith_index_u32(48974u, 30u)]), arg_2.d.x), !global0[_wgslsmith_index_u32(var_0.x ^ _wgslsmith_mod_u32(79716u, 4294967295u), 30u)]), arg_2);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    return Struct_3(true, 4294967295u, func_4(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 53059u, 4442u) ^ vec3<u32>(20315u, 44671u, u_input.a.x), func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], -1041i, vec2<bool>(arg_0, true), vec4<bool>(arg_0, true, false, false), Struct_1(vec3<i32>(-33176i, u_input.c.x, u_input.c.x), arg_1.x, vec2<u32>(0u, 0u), vec2<bool>(arg_0, arg_0))))), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) == select(~u_input.b.x, u_input.b.x, u_input.b.x == u_input.b.x), Struct_1(-vec3<i32>(-1i, -1i, -1i), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x))), u_input.b, select(vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(false, true)), arg_0))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = -((vec4<i32>(arg_2, ~u_input.c.x, -u_input.c.x, arg_1.c.e.a.x) | abs(-vec4<i32>(arg_2, arg_2, arg_2, 1i))) ^ firstLeadingBit(min(-vec4<i32>(u_input.c.x, -2147483647i, arg_2, 20246i), -vec4<i32>(58987i, 1i, arg_2, 1i))));
    global2 = global1.x;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1674f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.e.b + -294f), _wgslsmith_f_op_f32(f32(-1f) * -507f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.c.e.b)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(arg_1.c.e.b * -344f)), false)), _wgslsmith_f_op_f32(abs(358f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-614f, global1.x, arg_1.c.e.b, global1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.e.b, 871f, global1.x, arg_1.c.e.b), vec4<f32>(global1.x, 499f, global1.x, -1000f), vec4<bool>(true, true, arg_0.x, arg_1.c.d.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -1000f, global1.x, global1.x), vec4<f32>(global1.x, 170f, arg_1.c.e.b, 703f))), func_1(false, global1.wz).a)), !select(global0[_wgslsmith_index_u32(0u, 30u)], arg_1.c.a, vec4<bool>(true, arg_1.c.a.x, arg_0.x, arg_1.c.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-func_4(vec3<u32>(u_input.a.x, 1u, 4294967295u), true, arg_1.c.e).e.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), -675f, arg_1.c.e.b))));
    var var_1 = Struct_2(func_1(-var_0.x > abs(arg_1.c.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -346f))).c.d, countOneBits(-firstLeadingBit(_wgslsmith_add_i32(0i, -1i))), !arg_1.c.e.d, vec4<bool>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(12295i, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, -50917i, u_input.c.x))) == ~1i, arg_0.x, all(select(func_4(vec3<u32>(16073u, 0u, 1u), arg_0.x, Struct_1(vec3<i32>(arg_1.c.e.a.x, var_0.x, arg_2), global1.x, vec2<u32>(arg_1.b, u_input.b.x), vec2<bool>(arg_0.x, arg_0.x))).a.wzx, !arg_1.c.a.wyx, arg_0.x)), firstLeadingBit(arg_2 >> (1u % 32u)) != 0i), func_4(~countOneBits(u_input.a), false, Struct_1(var_0.xxz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.e.b + 186f), _wgslsmith_f_op_f32(global1.x * global1.x)), ~reverseBits(arg_1.c.e.c), select(vec2<bool>(arg_1.c.a.x, arg_1.c.e.d.x), vec2<bool>(arg_0.x, arg_1.c.c.x), 7670u > u_input.a.x))).e);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.c.x, var_0.x ^ 0i), vec2<i32>(var_1.b, -u_input.c.x)), var_0.xz));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.b, arg_1.c.e.b)))))), _wgslsmith_f_op_f32(arg_1.c.e.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e.b), _wgslsmith_f_op_f32(global1.x - 488f))), -789f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), func_1(any(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_f_op_vec2_f32(global1.xx - global1.xz)), ~select(1i, u_input.c.x, true))), global1.x, 311f));
    let var_1 = abs(u_input.c.xy);
    var var_2 = func_2(func_4((firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)) >> (~vec3<u32>(67665u, 59551u, u_input.b.x) % vec3<u32>(32u))) ^ u_input.a, true, Struct_1(firstLeadingBit(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f - global1.x)), vec2<u32>(func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], var_1.x, vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_1(vec3<i32>(-2147483647i, var_1.x, u_input.c.x), 426f, u_input.a.zz, vec2<bool>(false, true)))).x, 1u), select(func_4(vec3<u32>(1u, u_input.b.x, 0u), true, Struct_1(vec3<i32>(28779i, 2445i, var_1.x), -2145f, u_input.a.xy, vec2<bool>(true, true))).e.d, vec2<bool>(true, false), vec2<bool>(true, false))))).xy;
    let var_3 = abs(vec4<u32>(var_2.x, 1u, countOneBits(_wgslsmith_sub_u32(0u, ~var_2.x)), ~(var_2.x ^ ~u_input.b.x)));
    var_2 = func_4(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(23078u, u_input.b.x), ~var_2.x), 1u, abs(0u)), ~1u, 4294967295u), true, Struct_1(u_input.c, _wgslsmith_div_f32(762f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * global1.x)), ~u_input.b, !vec2<bool>(func_4(vec3<u32>(1u, 21181u, var_2.x), false, Struct_1(u_input.c, -1113f, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false))).e.d.x, true))).e.c;
    var_2 = ~vec2<u32>(~u_input.a.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(32326u, 4294967295u), _wgslsmith_dot_vec4_u32((var_3 | vec4<u32>(30192u, 0u, 49281u, 46524u)) ^ select(~var_3, var_3, vec4<bool>(true, true, false, true)), reverseBits(vec4<u32>(53270u, ~var_3.x, firstLeadingBit(var_3.x), 122970u))), vec4<f32>(-1608f, 390f, 1069f, _wgslsmith_f_op_f32(global1.x * global1.x)), var_3, vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.b.x, min(var_2.x, 9416u), ~4294967295u), var_2.x) >> (var_3.yyz % vec3<u32>(32u)));
}

