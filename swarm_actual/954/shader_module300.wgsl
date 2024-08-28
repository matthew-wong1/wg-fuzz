struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(u_input.b.yz, true);
    let var_1 = firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(arg_3.x, arg_3.x, firstLeadingBit(37045u)) << (u_input.e.x % 32u)));
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(565f - arg_0.x), arg_0.x, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1699f, arg_0.x, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1829f * arg_0.x) + _wgslsmith_f_op_f32(1760f * -524f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(-817f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -216f, false)) - _wgslsmith_f_op_f32(-arg_2.x)))), !select(vec4<bool>(!var_0.b, true, all(vec2<bool>(false, false)), select(var_0.b, var_0.b, true)), !(!vec4<bool>(var_0.b, var_0.b, true, var_0.b)), all(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))), var_0, ~4294967295u, var_0);
    let var_3 = vec4<u32>(146504u, min(~_wgslsmith_div_u32(18968u, u_input.c), ~firstLeadingBit(54125u)) ^ select(16493u, 4563u, all(var_2.b.wzx)), ~1u, ~var_1);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(var_2.a + var_2.a), !select(var_2.b, var_2.b, false)))), select(vec4<bool>(!any(vec3<bool>(var_2.b.x, var_2.c.b, var_0.b)), var_0.b | (false | var_0.b), !all(var_2.b.wy), var_0.b), !var_2.b, arg_2.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(132f, arg_2.x)))), Struct_1(select(u_input.b.xx ^ firstLeadingBit(var_0.a), vec2<i32>(min(-313i, var_0.a.x), 5731i), !(!vec2<bool>(var_2.e.b, var_2.e.b))), !var_2.c.b), 120130u, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.e.a.x, _wgslsmith_clamp_i32(arg_1, var_2.c.a.x, var_0.a.x)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-2147483647i, u_input.a))), !any(select(var_2.b.wx, var_2.b.wx, var_0.b))));
    return !(!(!select(vec2<bool>(false, true), select(var_4.b.zy, vec2<bool>(var_2.b.x, var_4.e.b), var_2.b.wx), var_2.b.zx)));
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(!any(func_3(vec3<f32>(290f, 245f, -470f), 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1755f)), _wgslsmith_add_vec2_u32(u_input.e.xx, u_input.e.yz))), true);
    global0 = select(u_input.d != u_input.e.x, !var_0.x, select(var_0.x, var_0.x, var_0.x));
    global0 = all(vec4<bool>(false, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(714f, 1237f, -847f), vec3<f32>(-1266f, -137f, 1317f)))), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, 245f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1248f, -1142f), vec2<f32>(-1014f, 1041f), var_0.x)), select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), false))), vec2<u32>(u_input.e.x, 1u)).x, any(vec2<bool>(var_0.x, true)), true));
    var_0 = vec2<bool>(!(!var_0.x), var_0.x);
    var_0 = !select(select(vec2<bool>(false && var_0.x, false), !vec2<bool>(false, var_0.x), vec2<bool>(true, true)), vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, true)), var_0.x), vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), var_0.x | var_0.x), !(!vec2<bool>(var_0.x, var_0.x))));
    return 1f;
}

fn func_1() -> i32 {
    var var_0 = -4687i;
    let var_1 = u_input.e.x;
    let var_2 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, _wgslsmith_div_u32(var_1, u_input.e.x), var_1 << (4294967295u % 32u), ~u_input.d) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e.x, var_1, var_1), vec4<u32>(u_input.c, var_1, 1u, 1u)), ~(~(~vec4<u32>(var_1, 22626u, 47945u, var_1)))), ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1, u_input.d), vec3<u32>(1u, 53311u, var_1)), _wgslsmith_mult_u32(4294967295u, u_input.d), 1u, countOneBits(u_input.d))));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(360f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1472f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-238f, 369f))))), 694f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, _wgslsmith_f_op_f32(max(-1154f, 1482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2167f) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 891f)))));
    global0 = false;
    return (~u_input.a << (~u_input.d % 32u)) << ((_wgslsmith_add_u32(max(24309u, _wgslsmith_dot_vec4_u32(var_2, var_2)), var_2.x) ^ _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(_wgslsmith_mult_u32(u_input.d, var_1), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 16492u, var_1, var_2.x), var_2)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~(abs(~u_input.e.xz) ^ _wgslsmith_add_vec2_u32(max(u_input.e.xz, vec2<u32>(u_input.d, 36760u)), select(u_input.e.yz, u_input.e.xx, true))), vec2<u32>(~(u_input.e.x >> (u_input.e.x % 32u)), 0u));
    global0 = 0u < var_0.x;
    let var_1 = vec2<i32>(u_input.a, _wgslsmith_div_i32(func_1(), u_input.b.x));
    global0 = true;
    let var_2 = select(!(!vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) > reverseBits(var_1.x)), true), (var_0.x > u_input.d) & func_3(vec3<f32>(_wgslsmith_f_op_f32(round(954f)), _wgslsmith_f_op_f32(step(-966f, 339f)), _wgslsmith_f_op_f32(trunc(1221f))), ~var_1.x, vec2<f32>(1f, 1f), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, var_0.x), countOneBits(vec2<u32>(var_0.x, 1u)))).x);
    global0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

