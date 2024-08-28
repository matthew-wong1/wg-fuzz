struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, false, false), vec3<i32>(0i, 0i, -1i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(1007i, -1i, -5343i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(7954i, 0i, 1i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-2924i, 2147483647i, -56459i)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 0i, -15089i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, -8736i, 0i)));

var<private> global1: vec2<i32> = vec2<i32>(12103i, 2147483647i);

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, true, false, true, false, true, false, false, true, false, true, true, true, true, false, true, true, true, false, true, true, true, false, true);

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(false, false, true), vec3<i32>(-1i, 73665i, 0i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-5505i, i32(-2147483648), -1i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(18495i, -27667i, 6799i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-41688i, 5148i, 2147483647i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(2147483647i, 22801i, 0i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(13849i, -5561i, 21175i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 1i, -95158i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(9467i, i32(-2147483648), 4512i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, -801i, 28529i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-1i, 620i, -1i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, 40691i, 1i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(0i, 1i, -10393i)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(-1i, 18387i, -66847i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(0i, -73260i, -1i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-5535i, 0i, -5807i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, -22945i, i32(-2147483648))), Struct_1(vec3<bool>(false, false, true), vec3<i32>(-1182i, 0i, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-1832i, -2557i, 0i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 36547i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-1i, -7914i, 1i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(3913i, 0i, 720i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(1i, -7174i, 1i)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(-8304i, -37093i, 1i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-49286i, -19729i, 1i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(4285i, -9074i, 1i)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(2147483647i, 10621i, 37847i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(58449i, 24549i, 36657i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, -3522i, -47186i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-13900i, -10578i, 0i)));

var<private> global4: vec4<i32> = vec4<i32>(28463i, -34506i, 1i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    global2 = array<bool, 25>();
    var var_0 = Struct_5(vec3<i32>(global1.x, -45858i, arg_1.x), arg_2.b, min(1i, -1i) > global1.x);
    global1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, _wgslsmith_mod_i32(~1i, _wgslsmith_mod_i32(global1.x, global4.x))) ^ reverseBits(global4.yw >> (~vec2<u32>(27770u, u_input.b) % vec2<u32>(32u))), global4.yz, ~var_0.a.yx);
    global2 = array<bool, 25>();
    let var_1 = arg_2.b.a;
    return ~(-25342i);
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = false;
    let var_1 = arg_0.c.zy;
    let var_2 = arg_0.b.b.a;
    let var_3 = global3[_wgslsmith_index_u32(1u, 32u)];
    let var_4 = Struct_2(vec3<u32>(~_wgslsmith_clamp_u32(reverseBits(0u), _wgslsmith_div_u32(0u, 11492u), ~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(14081u, arg_0.b.a.x, 53590u, arg_0.b.a.x), reverseBits(vec4<u32>(arg_0.b.a.x, 0u, 45051u, 1u))), 12343u), Struct_1(vec3<bool>(var_1.x, select(false, true, arg_0.b.d == global4.x), var_1.x), global4.wwz), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-697f * arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -572f)) * arg_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -453f)), countOneBits(var_3.b.x));
    return max(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 12022i) & vec2<i32>(global1.x, arg_0.b.b.b.x)), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-32173i, 2147483647i), global4.yw, global4.wz))), vec2<i32>(var_4.b.b.x, abs(global4.x) >> (select(20765u, 0u, var_4.b.a.x) % 32u)) << (arg_0.b.a.xy % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_5) -> vec3<i32> {
    global1 = (_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, arg_0.b.d), abs(arg_3.a.yy)) >> (arg_0.b.a.xy % vec2<u32>(32u))) << (vec2<u32>(53665u, 1u) % vec2<u32>(32u));
    var var_0 = ~global1.x;
    var_0 = -(-2147483647i & func_2(~0i, ~reverseBits(vec4<i32>(arg_1.x, global1.x, arg_3.a.x, 10489i)), arg_0.b));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.a.x, 871f)))));
    return vec3<i32>(reverseBits(~(~firstLeadingBit(arg_1.x))), arg_0.b.d, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(reverseBits(-global1.x), _wgslsmith_dot_vec2_i32(func_3(arg_0), arg_1))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec2<i32> {
    global1 = func_3(Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(2257f - 670f), _wgslsmith_f_op_f32(f32(-1f) * -1802f), _wgslsmith_f_op_f32(max(544f, -1166f))))), Struct_2(vec3<u32>(arg_1 << (13027u % 32u), arg_1, arg_3.x & 4294967295u), global3[_wgslsmith_index_u32(arg_1, 32u)], vec2<f32>(_wgslsmith_div_f32(-472f, -404f), 315f), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.x, -1i, 44260i), vec4<i32>(global1.x, arg_0.a.x, 15362i, arg_0.b.b.x))), !vec4<bool>(true, arg_2.x, false, arg_0.b.b.x > arg_0.a.x), !(global2[_wgslsmith_index_u32(42955u, 25u)] && false) || (true && arg_0.c), true));
    var var_0 = arg_1;
    return abs(arg_0.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_1 = func_4(Struct_5(-(~func_1(Struct_4(vec4<f32>(1000f, -936f, 917f, -1000f), Struct_2(vec3<u32>(u_input.a.x, u_input.b, 0u), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<f32>(-316f, 1000f), 31522i), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 25u)], false, true), global2[_wgslsmith_index_u32(32020u, 25u)], true), vec2<i32>(global1.x, -15746i), var_0.b, Struct_5(var_0.b, global3[_wgslsmith_index_u32(u_input.b, 32u)], true))), Struct_1(var_0.a, ~select(vec3<i32>(global1.x, global1.x, 548i), vec3<i32>(-2147483647i, -2147483647i, -29816i), true)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a.x, u_input.b), vec4<u32>(60677u, 1u, 21947u, u_input.a.x) ^ vec4<u32>(13092u, u_input.a.x, 1u, 49752u)), 25u)]), countOneBits(1u), select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 25u)], var_0.a.x, false || any(vec3<bool>(true, var_0.a.x, global2[_wgslsmith_index_u32(1u, 25u)]))), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 25u)], -22458i != var_0.b.x, true, global4.x < -11355i), !select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 25u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 25u)], var_0.a.x, false), true), true || global2[_wgslsmith_index_u32(94932u, 25u)]), false), ~(_wgslsmith_add_vec2_u32(vec2<u32>(45161u, 1u), ~vec2<u32>(u_input.a.x, u_input.b)) & abs(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)))));
    var var_2 = ~(~((~vec2<u32>(u_input.a.x, 1u) ^ u_input.a) & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, ~((~vec3<u32>(u_input.b, var_2.x, var_2.x) | ~vec3<u32>(u_input.a.x, 1u, var_2.x)) << (vec3<u32>(_wgslsmith_mult_u32(24132u, var_2.x), ~18579u, var_2.x) % vec3<u32>(32u))));
}

