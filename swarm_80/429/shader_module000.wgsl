struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(33600i, 9253i, 1i), vec3<i32>(-23982i, 1i, 37279i), vec3<i32>(i32(-2147483648), 0i, -23276i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(32622i, -10132i, 54533i), vec3<i32>(-13409i, -41611i, i32(-2147483648)), vec3<i32>(2147483647i, 50445i, 0i), vec3<i32>(-34218i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-7450i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(2147483647i, 69798i, 0i), vec3<i32>(3569i, -7606i, -1i), vec3<i32>(-42633i, -22745i, 311i), vec3<i32>(1i, -25432i, i32(-2147483648)), vec3<i32>(-1824i, 2147483647i, 18664i), vec3<i32>(-18711i, 1i, 8185i), vec3<i32>(2147483647i, 14001i, 2757i), vec3<i32>(0i, 0i, -1i), vec3<i32>(-25447i, i32(-2147483648), -3567i), vec3<i32>(13422i, -29394i, 15331i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(2147483647i, 529i, 32832i), vec3<i32>(-25121i, 0i, i32(-2147483648)), vec3<i32>(-1401i, i32(-2147483648), 15350i), vec3<i32>(64444i, 8517i, 1i), vec3<i32>(2147483647i, -5426i, 8135i), vec3<i32>(11795i, 0i, -22119i), vec3<i32>(24566i, 40743i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> bool {
    global0 = array<vec3<i32>, 29>();
    let var_0 = !select(vec4<bool>(true, true, false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)));
    global0 = array<vec3<i32>, 29>();
    return !(!any(var_0.zzy) | !var_0.x) | !(!var_0.x);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global0 = array<vec3<i32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.a.zx, vec2<f32>(_wgslsmith_f_op_f32(-2752f + arg_0.e.a.x), _wgslsmith_f_op_f32(-758f + -912f))))));
    var var_1 = -69280i;
    let var_2 = select(select(vec4<bool>(true, arg_0.e.d.x, true, true != all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(arg_0.d.x, arg_0.e.d.x, false, false), select(vec4<bool>(arg_0.e.d.x, true, arg_0.d.x, true), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.e.d.x, arg_0.e.d.x), true), any(vec2<bool>(true, arg_0.d.x))), select(vec4<bool>(true, arg_0.d.x, arg_0.e.d.x, arg_0.d.x), vec4<bool>(arg_0.d.x, arg_0.e.d.x, arg_0.d.x, arg_0.e.d.x), false), vec4<bool>(true, true, true, true)), ~u_input.b.x <= u_input.b.x), vec4<bool>(arg_0.e.d.x, false, arg_0.d.x, func_1()), true);
    let var_3 = select(select(select(!(!var_2), !var_2, all(var_2)), !(!select(vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(arg_0.e.d.x, true, true, true), vec4<bool>(var_2.x, true, var_2.x, arg_0.d.x))), !(!vec4<bool>(true, false, var_2.x, false))), select(select(vec4<bool>(1u < arg_0.e.e.x, arg_0.b.x < arg_0.c.x, true, any(var_2)), select(!vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(arg_0.e.d.x, arg_0.d.x, true, arg_0.e.d.x), !var_2), all(vec2<bool>(arg_0.e.d.x, var_2.x))), select(vec4<bool>(var_2.x, var_2.x, false, true), var_2, false), select(true, var_2.x, true)), !(true && arg_0.e.d.x));
    return ~vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(arg_0.e.e, arg_0.e.e), _wgslsmith_div_u32(arg_0.e.e.x, _wgslsmith_sub_u32(arg_0.e.e.x, arg_0.e.e.x)), ~52617u >> (1u % 32u)), min(arg_0.e.e.x, arg_0.e.e.x));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = ~(min(1u, _wgslsmith_sub_u32(select(60917u, 1u, true), ~20505u)) ^ 4294967295u);
    global0 = array<vec3<i32>, 29>();
    var var_1 = -595f;
    let var_2 = _wgslsmith_div_vec2_u32(abs(~(vec2<u32>(1u, 1u) >> (func_3(Struct_2(vec3<f32>(250f, -749f, 1787f), vec2<i32>(u_input.a, 0i), u_input.b, vec3<bool>(false, true, true), Struct_1(vec4<f32>(2942f, -475f, 1155f, 567f), u_input.b.x, vec4<f32>(-1247f, 703f, 1000f, -2118f), vec3<bool>(false, false, true), vec3<u32>(0u, 4444u, 1u)))) % vec2<u32>(32u)))), ~(~vec2<u32>(~0u, ~4294967295u)));
    var var_3 = vec2<bool>(all(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))), true && !all(vec3<bool>(true, true, true)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(780f, 469f, 1000f, -680f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(292f, 398f)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1635f))), ~firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(2147483647i, -13533i))), vec4<f32>(1f, 1f, 1f, 1f), select(select(vec3<bool>(true, func_1(), true), vec3<bool>(func_2(vec2<i32>(-2147483647i, u_input.b.x)), true, select(false, true, false)), !func_1()), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 1u, firstLeadingBit(1u), _wgslsmith_div_u32(4294967295u, 4294967295u))), 0u | firstTrailingBit(max(33972u, 1u)), _wgslsmith_mult_u32(reverseBits(firstTrailingBit(117633u)), ~64490u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.c.x)) + vec2<f32>(var_0.c.x, var_0.a.x))))), var_0.c.xw));
    var var_2 = 12615u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(select(vec4<u32>(var_0.e.x, 8253u, 7713u, 1u), vec4<u32>(var_0.e.x, 15984u, 4294967295u, var_0.e.x), vec4<bool>(false, var_0.d.x, true, var_0.d.x))), vec4<u32>(var_0.e.x, ~var_0.e.x, _wgslsmith_mod_u32(8007u, var_0.e.x), func_3(Struct_2(var_0.c.yxy, vec2<i32>(var_0.b, var_0.b), u_input.b, var_0.d, Struct_1(vec4<f32>(-220f, -1026f, var_1.x, 1632f), u_input.b.x, vec4<f32>(877f, 660f, 557f, -1067f), vec3<bool>(true, var_0.d.x, true), var_0.e))).x)), vec4<u32>(reverseBits(~23447u), ~var_0.e.x << ((39333u << (0u % 32u)) % 32u), 1u, ~var_0.e.x)), vec4<i32>(-32034i, countOneBits(u_input.a), 15138i | -(~u_input.a), -36049i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1894f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))))), max(vec3<u32>(~(~var_0.e.x), var_0.e.x, 60436u), firstTrailingBit(~var_0.e)), 1270f);
}

