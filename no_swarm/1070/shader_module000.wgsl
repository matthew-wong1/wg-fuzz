struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global1: Struct_2 = Struct_2(vec3<i32>(0i, -46830i, 1i), Struct_1(false, false), Struct_1(false, true));

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<i32>(0i, 2147483647i, 0i), Struct_1(true, false), Struct_1(false, false)), Struct_2(vec3<i32>(4027i, 2147483647i, 2147483647i), Struct_1(true, true), Struct_1(false, false)), Struct_2(vec3<i32>(62104i, i32(-2147483648), -25137i), Struct_1(true, false), Struct_1(false, false)), Struct_2(vec3<i32>(1i, 1i, -1i), Struct_1(true, false), Struct_1(false, true)), Struct_2(vec3<i32>(2147483647i, 42766i, 12016i), Struct_1(true, false), Struct_1(false, false)), Struct_2(vec3<i32>(1i, 0i, 1i), Struct_1(true, false), Struct_1(true, false)), Struct_2(vec3<i32>(-8536i, 0i, 2147483647i), Struct_1(false, false), Struct_1(false, false)), Struct_2(vec3<i32>(13940i, -1i, 2147483647i), Struct_1(false, true), Struct_1(false, false)), Struct_2(vec3<i32>(-20215i, 11830i, i32(-2147483648)), Struct_1(true, false), Struct_1(true, false)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), Struct_1(false, false), Struct_1(false, false)), Struct_2(vec3<i32>(-36919i, 47706i, -26271i), Struct_1(false, false), Struct_1(false, false)), Struct_2(vec3<i32>(-67231i, 1i, -1i), Struct_1(true, false), Struct_1(true, false)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -1i), Struct_1(true, false), Struct_1(false, true)), Struct_2(vec3<i32>(-14263i, 14921i, 2147483647i), Struct_1(true, false), Struct_1(false, false)), Struct_2(vec3<i32>(-12107i, 0i, 63549i), Struct_1(false, false), Struct_1(true, false)), Struct_2(vec3<i32>(-24500i, 2147483647i, 2147483647i), Struct_1(false, false), Struct_1(false, false)), Struct_2(vec3<i32>(17739i, -41915i, -4996i), Struct_1(true, true), Struct_1(true, true)), Struct_2(vec3<i32>(31472i, -1i, 74410i), Struct_1(true, true), Struct_1(false, true)), Struct_2(vec3<i32>(0i, 2147483647i, 0i), Struct_1(true, true), Struct_1(false, false)), Struct_2(vec3<i32>(-20535i, i32(-2147483648), -26823i), Struct_1(true, false), Struct_1(true, false)), Struct_2(vec3<i32>(-1i, 0i, -44263i), Struct_1(false, false), Struct_1(false, true)), Struct_2(vec3<i32>(-68508i, 20066i, i32(-2147483648)), Struct_1(true, false), Struct_1(true, false)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -14065i), Struct_1(true, false), Struct_1(true, true)), Struct_2(vec3<i32>(1i, -1i, 2147483647i), Struct_1(true, true), Struct_1(false, true)), Struct_2(vec3<i32>(28537i, -1i, 2147483647i), Struct_1(false, false), Struct_1(true, false)));

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(33289i, 0i, i32(-2147483648), 0i), vec4<i32>(-1i, -9241i, 0i, 38704i), vec4<i32>(0i, 2147483647i, 1i, -15858i), vec4<i32>(29897i, -1i, 0i, -22130i), vec4<i32>(2147483647i, -51677i, 20592i, i32(-2147483648)), vec4<i32>(-2542i, -38593i, 58415i, 29370i), vec4<i32>(25462i, 0i, -1836i, 0i));

var<private> global4: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-64738i, -44989i, -9957i, -1094i), vec4<i32>(26584i, -7734i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 6435i, -6400i, 0i), vec4<i32>(2147483647i, 14976i, 0i, 1i), vec4<i32>(1i, 2147483647i, 2147483647i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = global1.c;
    global2 = array<Struct_2, 25>();
    global3 = array<vec4<i32>, 7>();
    let var_1 = true;
    var var_2 = u_input.a.wzy;
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    return global0[_wgslsmith_index_u32(87000u, 25u)];
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = true;
    var_0 = select(false || global1.c.b, true, true);
    var var_1 = !arg_1.yyx;
    var var_2 = min(abs(vec2<u32>(63780u, ~(~28234u))), max(reverseBits(abs(min(vec2<u32>(arg_0, 1u), vec2<u32>(26944u, arg_0)))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_0, 13221u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 42479u), vec2<u32>(arg_0, arg_0)) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u)), vec2<u32>(arg_0 ^ arg_0, 11474u))));
    var var_3 = Struct_1(true, global1.b.a);
    return vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(0i, -1i, u_input.a.x)), _wgslsmith_mult_vec3_i32(global1.a, vec3<i32>(58271i, u_input.a.x, 63332i)) & abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~global1.a.x, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, max(63684u, arg_0)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 75318u, 4294967295u), vec3<u32>(4294967295u, var_2.x, 60968u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0, 4294967295u), _wgslsmith_mod_u32(0u, 120957u)), 1u), vec4<u32>(4294967295u, _wgslsmith_div_u32(arg_0, 4294967295u), _wgslsmith_mod_u32(1u, var_2.x), _wgslsmith_add_u32(max(25414u, var_2.x), ~arg_0))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 5>();
    let var_0 = -_wgslsmith_clamp_i32(~1i, func_1(global1.b, ~(-u_input.a.x), -countOneBits(-33916i)), global1.a.x);
    let var_1 = global1.b;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, _wgslsmith_add_i32(u_input.a.x & (i32(-1i) * -1i), 0i), countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -1i, -24660i), vec3<i32>(var_0, global1.a.x, 25285i)))), select(vec4<i32>(-2147483647i, var_0, 1i, u_input.a.x) ^ u_input.a, -u_input.a, select(func_2(Struct_1(true, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -689f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 49394u), 25u)]), vec4<bool>(false, select(var_1.a, global1.c.b, true), global1.c.a && global1.c.b, func_2(Struct_1(true, true), -2049f, Struct_2(vec3<i32>(var_0, -1i, 24768i), global1.c, global1.b)).x), global0[_wgslsmith_index_u32(1u, 25u)])));
    let var_3 = max(u_input.a, ~func_3(~(~4294967295u), !vec4<bool>(var_1.a, true, false, var_1.b)));
    let var_4 = func_2(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-705f)), 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1681f))))), Struct_2(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(var_2.x, -4009i, var_3.x)), vec3<i32>(reverseBits(u_input.a.x), var_2.x, _wgslsmith_dot_vec3_i32(var_2.wyy, u_input.a.zwx))), global1.b, global1.b)).zz;
    var var_5 = ~vec4<u32>(1u, 1u, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, 687f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1028f)), -176f)))), select(vec2<u32>(~abs(var_5.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.x, 40852u, var_5.x, var_5.x), vec4<u32>(var_5.x, var_5.x, var_5.x, var_5.x))), firstTrailingBit(~(var_5.xy ^ var_5.yy)), false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1527f, 564f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1413f, 203f) * vec2<f32>(1512f, -1183f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1275f, -1224f), vec2<f32>(479f, -943f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, 426f)))), select(var_1.a, !var_1.a, global1.b.a == false))))), -301f, _wgslsmith_f_op_f32(ceil(-605f)));
}

