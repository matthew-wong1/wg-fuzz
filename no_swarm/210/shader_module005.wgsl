struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(18090i, 24787i, 0i, 2147483647i), vec4<i32>(-22540i, 0i, 29308i, i32(-2147483648)));

var<private> global1: u32;

var<private> global2: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.a, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.d.x, -656f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(632f, arg_0.d.x, arg_0.d.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -2259f, 436f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(748f, 1000f, arg_0.a, arg_0.d.x)))) - arg_0.d)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(var_1.c, arg_0.c) | (_wgslsmith_mult_vec4_u32(vec4<u32>(21690u, 101738u, 1u, 62942u), var_1.c) | arg_0.c)), vec4<u32>(_wgslsmith_mod_u32(arg_0.c.x, 56395u) & 40808u, 98881u, firstTrailingBit(~0u), _wgslsmith_dot_vec4_u32(min(var_1.c, vec4<u32>(40667u, u_input.b, arg_0.c.x, var_1.c.x)), vec4<u32>(var_1.c.x, 32347u, 26903u, u_input.b))) << (arg_0.c % vec4<u32>(32u)));
    let var_3 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), false), vec3<bool>(true, all(vec4<bool>(true, true, false, false)), true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), any(vec2<bool>(true, any(vec4<bool>(false, false, false, false)))));
    var var_4 = arg_0;
    return ~var_1.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    global2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(_wgslsmith_mod_u32(firstTrailingBit(63947u), arg_1.x), firstLeadingBit(reverseBits(89319u))), 0u), ~abs(max(35410u, _wgslsmith_dot_vec4_u32(vec4<u32>(37462u, arg_1.x, 1772u, arg_0.c.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b)))));
    var var_0 = ~arg_0.b;
    var var_1 = ~(~reverseBits(arg_0.c));
    global2 = arg_0.c.x;
    var var_2 = Struct_1(528f, -1i, max(vec4<u32>(arg_0.c.x, 1u ^ (arg_1.x ^ 1u), u_input.a.x, max(var_1.x, 1u)), vec4<u32>(abs(_wgslsmith_div_u32(4294967295u, 27656u)), _wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(0u, 0u, 1168u, 0u)) & ~49377u, _wgslsmith_sub_u32(arg_1.x, _wgslsmith_mod_u32(arg_0.c.x, 64236u)), func_3(Struct_1(1129f, 63292i, arg_0.c, arg_0.d)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.d), arg_0.d)));
    return var_1.x >> (_wgslsmith_mod_u32(~(0u & _wgslsmith_div_u32(var_2.c.x, arg_1.x)), ~76262u) % 32u);
}

fn func_1() -> vec4<f32> {
    global1 = _wgslsmith_clamp_u32(~(min(u_input.b, u_input.b) & ~u_input.b), 1u ^ min(_wgslsmith_dot_vec4_u32(vec4<u32>(12981u, u_input.a.x, 1u, 4294967295u), vec4<u32>(u_input.a.x, 1u, 87194u, u_input.b)), 70294u), ~u_input.a.x) >> (u_input.b % 32u);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(833f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-248f * -1359f)))) + 216f), ~22199i, (~vec4<u32>(0u, u_input.b, 4294967295u, 3647u) << (vec4<u32>(4294967295u, func_2(Struct_1(496f, -2147483647i, vec4<u32>(45699u, u_input.b, u_input.b, 4294967295u), vec4<f32>(1290f, -687f, -285f, -1054f)), vec3<u32>(3658u, 59274u, 49486u), vec2<f32>(242f, 1164f), 31384i), u_input.a.x & u_input.a.x, u_input.a.x & 78124u) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_div_u32(18443u | u_input.b, ~u_input.a.x), u_input.b ^ (u_input.a.x << (u_input.b % 32u)), 4294967295u, 13770u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-218f, -1146f, -837f, -284f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * 696f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(506f)) - _wgslsmith_f_op_f32(f32(-1f) * -753f)), 1f, _wgslsmith_f_op_f32(292f - _wgslsmith_f_op_f32(f32(-1f) * -1720f))))));
    global0 = array<vec4<i32>, 2>();
    var var_1 = Struct_1(var_0.a, _wgslsmith_sub_i32(-17604i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, -1420i) | vec2<i32>(var_0.b, 1i)), ~vec2<i32>(-2723i, var_0.b) << (var_0.c.yw % vec2<u32>(32u)))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.c.x, 4294967295u, 31581u, 26945u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, var_0.c.x), ~vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-848f, _wgslsmith_f_op_f32(var_0.a - -286f), -649f, _wgslsmith_f_op_f32(var_0.d.x - var_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1044f, -788f, -1859f) - vec4<f32>(var_0.a, var_0.d.x, var_0.d.x, var_0.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1000f, -387f, var_0.d.x), var_0.d))))));
    var var_2 = !(!any(vec2<bool>(true, true)) | all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))) | true;
    return vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(max(1448f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(795f + -655f), var_1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1082f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    global2 = reverseBits(64913u);
    global1 = select(u_input.b, u_input.b, 53676u <= (~u_input.b & reverseBits(firstLeadingBit(64647u))));
    var var_1 = vec4<bool>(!select(false, true, true) && !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), !(!any(vec2<bool>(true, true))), any(!vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)))), true);
    global2 = countOneBits(_wgslsmith_mult_u32(u_input.a.x, ~26576u));
    global2 = 22573u;
    var_1 = select(!select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, false, false, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, false, false), var_1.x), true), !vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !(!vec4<bool>(true | var_1.x, var_1.x, all(vec4<bool>(true, false, true, true)), var_1.x)), select(vec4<bool>(true, true, select(var_1.x, var_1.x, true), true), !vec4<bool>(select(true, true, var_1.x), all(vec4<bool>(var_1.x, false, true, false)), select(false, true, var_1.x), false), any(select(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false), vec4<bool>(false, true, true, var_1.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -(i32(-1i) * -1i), _wgslsmith_div_i32(0i, ~1i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 12563i), _wgslsmith_sub_i32(-1i, -1i), _wgslsmith_sub_i32(1i, 2147483647i)) ^ 21231i, -2147483647i), u_input.a);
}

