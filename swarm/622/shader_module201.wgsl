struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(65829u, 4294967295u, 15239u), vec3<u32>(1u, 30394u, 50594u), vec3<u32>(78501u, 1u, 52240u), vec3<u32>(5562u, 1u, 26624u), vec3<u32>(23083u, 27452u, 0u), vec3<u32>(43405u, 4294967295u, 14567u), vec3<u32>(27733u, 25121u, 13895u), vec3<u32>(8165u, 1u, 31797u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(33523u, 18948u, 4294967295u), vec3<u32>(1u, 0u, 38726u), vec3<u32>(44302u, 43294u, 0u), vec3<u32>(0u, 64562u, 0u), vec3<u32>(4294967295u, 139993u, 10511u), vec3<u32>(10308u, 11261u, 4294967295u), vec3<u32>(4294967295u, 2631u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(31042u, 52721u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 37001u, 29130u), vec3<u32>(22076u, 3878u, 47461u), vec3<u32>(61410u, 68195u, 251u), vec3<u32>(20261u, 23567u, 0u), vec3<u32>(23315u, 0u, 58482u));

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    global1 = Struct_1(vec2<i32>(arg_1.b.a.x, firstLeadingBit(-(~0i))), !arg_1.b.b, -1099f, ~arg_1.b.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_div_f32(-1363f, -149f), _wgslsmith_f_op_f32(-2040f - _wgslsmith_f_op_f32(floor(arg_2))), arg_2));
    global0 = array<vec3<u32>, 24>();
    let var_1 = arg_1;
    var var_2 = global1.d;
    return 27930i;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(global1.a.x, reverseBits(46736i)), reverseBits(u_input.b.x) & u_input.b.x), ~_wgslsmith_mod_i32(global1.a.x, i32(-1i) * -1i)), !global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, global1.c, -600f))), Struct_2(global1.c, Struct_1(vec2<i32>(u_input.c, global1.d), global1.b, 1556f, -2147483647i), vec2<f32>(1867f, 382f), _wgslsmith_div_f32(global1.c, 578f)), _wgslsmith_f_op_f32(-global2.x), vec4<u32>(1u << (u_input.a.x % 32u), u_input.a.x, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 104247u))), func_3(global2.xxz, Struct_2(-299f, Struct_1(global1.a, global1.b, global1.c, u_input.b.x), global2.ww, 543f), -958f, max(min(vec4<u32>(27823u, u_input.a.x, 7472u, 4294967295u), vec4<u32>(0u, 105358u, u_input.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(11275u, 57604u, u_input.a.x, 1u), vec4<bool>(false, false, global1.b.x, false))))));
    let var_0 = Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(u_input.c), _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(u_input.c, u_input.c))), ~vec2<i32>(u_input.b.x, global1.a.x)), ~global1.a, true), select(!global1.b, vec3<bool>(_wgslsmith_mod_u32(9195u, u_input.a.x) < (15626u | u_input.a.x), true, false), select(select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), select(global1.b, vec3<bool>(global1.b.x, false, false), global1.b), any(global1.b)), vec3<bool>(!global1.b.x, global1.b.x, !global1.b.x), select(true, any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f - global1.c))), global2.x), 49298i);
    global0 = array<vec3<u32>, 24>();
    global0 = array<vec3<u32>, 24>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))), var_0, global2.zx, global2.x);
    return Struct_1(vec2<i32>(var_0.a.x, i32(-1i) * -2147483647i), vec3<bool>(any(vec2<bool>(false || global1.b.x, false)), global1.b.x, global1.b.x), _wgslsmith_f_op_f32(ceil(1000f)), global1.a.x);
}

fn func_1() -> vec4<bool> {
    global1 = func_2();
    global1 = func_2();
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(32840i, -17248i | global1.d), ~(~21963i));
    var var_1 = _wgslsmith_mod_i32(-14437i, u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    return !(!(!select(!vec4<bool>(global1.b.x, true, true, false), vec4<bool>(global1.b.x, global1.b.x, false, true), !global1.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(-vec2<i32>(8518i, u_input.b.x) ^ min(vec2<i32>(-1i, global1.d), vec2<i32>(global1.a.x, -2147483647i))), vec2<i32>(i32(-1i) * -u_input.c, arg_3.x)), func_2().b, _wgslsmith_div_f32(477f, -466f), 2147483647i);
    var var_2 = arg_1.b;
    let var_3 = arg_3.zyy;
    global0 = array<vec3<u32>, 24>();
    return ~countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2), ~vec4<u32>(arg_2, arg_2, 89000u, 4294967295u)));
}

fn func_5(arg_0: u32) -> StorageBuffer {
    global0 = array<vec3<u32>, 24>();
    return StorageBuffer(i32(-1i) * -(global1.a.x << (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, arg_0) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(), Struct_2(global1.c, Struct_1(u_input.b, global1.b, _wgslsmith_div_f32(1110f, -205f), _wgslsmith_sub_i32(0i, u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(602f - -1346f), 278f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-683f - global2.x), global1.c))), max(_wgslsmith_dot_vec2_u32(abs(u_input.a.xz), ~vec2<u32>(u_input.a.x, 0u)), firstTrailingBit(u_input.a.x)), max(~(~vec4<i32>(-13136i, u_input.c, global1.a.x, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 2543i, 1i), vec4<i32>(u_input.c, u_input.c, -1i, -1i)) | -vec4<i32>(global1.a.x, 2147483647i, u_input.b.x, 1i))));
}

