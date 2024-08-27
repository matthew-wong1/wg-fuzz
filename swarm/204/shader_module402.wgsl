struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(608f, -115f);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(578f, -1402f, 374f), vec3<f32>(341f, 1002f, 461f), vec3<f32>(-106f, -1171f, 829f), vec3<f32>(-260f, -1000f, 1000f), vec3<f32>(1098f, -820f, -1421f), vec3<f32>(-1000f, -1314f, 1000f), vec3<f32>(380f, -1446f, 1000f), vec3<f32>(1888f, 242f, 1799f), vec3<f32>(-417f, 203f, 171f), vec3<f32>(-792f, -1518f, 939f), vec3<f32>(-545f, 372f, 1220f), vec3<f32>(-463f, 237f, 2069f), vec3<f32>(-1000f, 835f, 601f), vec3<f32>(-1255f, -270f, -1656f), vec3<f32>(-2187f, -559f, 1027f), vec3<f32>(1859f, 679f, -1121f), vec3<f32>(1478f, -754f, 1800f), vec3<f32>(-499f, 817f, -971f), vec3<f32>(-677f, -431f, -601f), vec3<f32>(693f, -371f, 1000f), vec3<f32>(-645f, -1386f, 1983f), vec3<f32>(-2135f, -558f, -1871f), vec3<f32>(-605f, -621f, -1000f), vec3<f32>(-1991f, -224f, -699f), vec3<f32>(597f, 2557f, 1633f), vec3<f32>(1000f, -138f, -476f), vec3<f32>(387f, -1270f, 745f), vec3<f32>(-685f, 634f, 617f), vec3<f32>(1699f, -516f, 104f), vec3<f32>(416f, -1023f, 1921f), vec3<f32>(877f, 563f, -178f), vec3<f32>(792f, 693f, 765f));

var<private> global3: Struct_4 = Struct_4(false, Struct_2(vec4<i32>(-7397i, -16202i, 0i, 2147483647i), true, Struct_1(1u, i32(-2147483648), vec2<u32>(56654u, 4294967295u)), Struct_1(75145u, 16786i, vec2<u32>(58174u, 0u))), vec3<bool>(false, true, false), vec4<i32>(0i, 2147483647i, -10087i, -12415i), 1u);

var<private> global4: vec2<f32> = vec2<f32>(-1191f, -933f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = global1.x;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.zy)))));
    var var_1 = -15694i;
    let var_2 = Struct_3(~global3.e, -vec3<i32>(_wgslsmith_dot_vec4_i32(~arg_2, u_input.a | arg_2), select(1i, -80231i, !global3.b.b), arg_2.x), 13890u);
    var var_3 = true & !(false && global3.a);
    return global3.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = global4.x > _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 1732f)) + _wgslsmith_f_op_f32(step(842f, 821f)))));
    global1 = arg_0;
    global0 = arg_0.wy;
    let var_1 = global4.x;
    let var_2 = arg_0.yx;
    return arg_0.yy;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = u_input.a.x;
    global4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.wy - global1.xy), _wgslsmith_f_op_vec2_f32(global1.wx - vec2<f32>(global1.x, global0.x)), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xw) + _wgslsmith_f_op_vec2_f32(-global1.wz))))));
    global2 = array<vec3<f32>, 32>();
    global2 = array<vec3<f32>, 32>();
    var var_1 = ~(~global3.b.c.c);
    return _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(176f - global0.x), global0.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global0.x * global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1779f, -231f, -1149f, 732f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global4.x, global4.x, global1.x) - vec4<f32>(global0.x, -2011f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, -665f, -1000f, global1.x)))))), Struct_4(global3.c.x, Struct_2(abs(vec4<i32>(22351i, -54077i, var_0, -14977i)), global3.b.b, arg_0, global3.b.c), select(vec3<bool>(global3.c.x, global3.a == global3.a, true), select(func_3(global3.d.yw, 3609u, vec4<i32>(global3.b.a.x, 21239i, global3.b.d.b, var_0)), select(vec3<bool>(false, false, true), vec3<bool>(false, global3.c.x, false), global3.c), global3.c.x), !func_3(vec2<i32>(0i, global3.d.x), 0u, vec4<i32>(-2147483647i, arg_0.b, 1i, var_0))), u_input.a, firstTrailingBit(~1u) ^ 4294967295u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_2 {
    global4 = _wgslsmith_div_vec2_f32(global1.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zw * vec2<f32>(global0.x, global1.x))), _wgslsmith_f_op_vec2_f32(func_2(global3.b.d)), select(global3.c.xx, vec2<bool>(false, false), vec2<bool>(global3.b.b, true))))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(round(-260f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_div_f32(1357f, 1082f)), global1.x)), Struct_2((u_input.a & vec4<i32>(u_input.a.x, 44456i, u_input.a.x, 4061i)) ^ vec4<i32>(arg_0.x, min(u_input.a.x, 25964i), reverseBits(global3.d.x), _wgslsmith_add_i32(u_input.a.x, -14864i)), global3.a, global3.b.c, global3.b.d), !(!select(global3.c, select(vec3<bool>(true, global3.c.x, false), vec3<bool>(true, global3.a, true), false), any(global3.c.yz))), ~(~vec4<i32>(select(2147483647i, 23106i, false), _wgslsmith_sub_i32(21520i, 8590i), global3.d.x, -2147483647i)), ~(~_wgslsmith_clamp_u32(select(u_input.d.x, 26452u, false), global3.b.c.a, ~40697u)));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-u_input.a, -1875f);
    var var_1 = ~_wgslsmith_add_u32(countOneBits(~countOneBits(u_input.b)), var_0.d.c.x);
    var var_2 = Struct_3(u_input.d.x, vec3<i32>(-12384i, _wgslsmith_mod_i32(var_0.d.b, global3.d.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global3.d.x, 5506i, 1i, u_input.a.x) & firstTrailingBit(var_0.a))), 1u);
    let var_3 = var_0.c;
    global2 = array<vec3<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(-global3.b.a) ^ (~vec4<i32>(var_0.c.b, -1i, global3.d.x, 31905i) & vec4<i32>(var_0.a.x, -15499i, var_0.d.b, global3.b.c.b)), vec4<i32>(var_0.c.b | u_input.a.x, var_3.b, (i32(-1i) * -1i) | u_input.a.x, var_2.b.x)), ~select(~(~u_input.d), countOneBits(u_input.d) | min(u_input.d, u_input.d), select(select(vec4<bool>(var_0.b, false, false, global3.b.b), vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.b, true, global3.b.b)), vec4<bool>(true, true, true, true), global3.c.x == true)), ~4294967295u, ~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b, 0i, -44754i, -4161i), var_0.a)), ~vec4<u32>(abs(0u) << (firstTrailingBit(var_0.c.a) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(8343u, var_2.a), ~global3.b.c.c), max(u_input.b << (0u % 32u), 1u), 1u));
}

