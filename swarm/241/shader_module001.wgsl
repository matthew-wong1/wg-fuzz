struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(1264f, -1002f, 889f), vec3<f32>(198f, 801f, -559f), vec3<f32>(598f, -1504f, 1651f), vec3<f32>(522f, -2145f, -1092f), vec3<f32>(-529f, -1453f, -1000f), vec3<f32>(-1820f, 662f, 363f), vec3<f32>(1288f, -417f, 806f), vec3<f32>(570f, -947f, -525f), vec3<f32>(-1083f, 753f, -1440f), vec3<f32>(1000f, -231f, 1541f), vec3<f32>(-375f, -997f, -1288f), vec3<f32>(441f, 1000f, -1175f), vec3<f32>(-856f, 1000f, -1000f), vec3<f32>(435f, -310f, 483f), vec3<f32>(969f, 318f, -133f), vec3<f32>(588f, -766f, 282f), vec3<f32>(-605f, 1503f, 178f), vec3<f32>(1444f, -794f, 1497f), vec3<f32>(-419f, -870f, 1552f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_i32(-49021i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, u_input.a.x), -2147483647i ^ u_input.a.x, 1446i, 2147483647i), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x) | vec4<i32>(u_input.a.x, 18228i, 1693i, 2147483647i))), vec4<i32>(-(i32(-1i) * -34103i), -(u_input.a.x & u_input.a.x), min(1i, 24479i), -2147483647i)), u_input.a.x);
    let var_1 = u_input.a.xzz;
    let var_2 = Struct_2(!select(vec2<bool>(all(vec2<bool>(false, false)), false), vec2<bool>(true, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(420f))), false, 1257f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1529f, 1466f, 1482f), _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(3596u, 19u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, -202f, 718f) * global0[_wgslsmith_index_u32(~19625u, 19u)])), 30550u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1505f - 1835f) - _wgslsmith_f_op_f32(min(836f, -1091f))), 846f)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~27320u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32592u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u)), ~0u), 19u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(31035u, 19u)]))), _wgslsmith_clamp_u32(abs(28935u), 1u, _wgslsmith_sub_u32(5548u, firstLeadingBit(22383u)))));
    let var_3 = var_2.a;
    global0 = array<vec3<f32>, 19>();
    return !(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.a.x, false, var_2.b.b), vec4<bool>(var_3.x, false, var_3.x, false)), select(vec4<bool>(var_3.x, var_2.a.x, var_3.x, false), vec4<bool>(var_3.x, var_2.b.b, false, true), false), true)));
}

fn func_2(arg_0: u32) -> bool {
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    let var_0 = ~(~vec3<u32>(~(arg_0 | arg_0), 36110u, ~_wgslsmith_add_u32(arg_0, arg_0)));
    var var_1 = vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false))) & false, any(func_3()));
    let var_2 = -(~(_wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.a), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(9340i, 17556i, -25010i, 25584i))) & u_input.a));
    return abs(min(_wgslsmith_dot_vec3_u32(var_0, ~var_0), var_0.x)) <= 96807u;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.a.x;
    var var_1 = ~(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(9984u, 0u), select(vec2<u32>(4499u, 37867u), vec2<u32>(24775u, 57399u), vec2<bool>(arg_0.a.x, false)))));
    var var_2 = arg_0.c.b;
    var_0 = (all(vec3<bool>(true, true, true)) | func_2(~var_1.x)) || (136f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.d.x))) - _wgslsmith_f_op_f32(arg_0.c.a * arg_0.b.a)));
    var var_3 = Struct_1(arg_0.b.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.b.a, -1131f)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f + arg_0.b.d.x)), _wgslsmith_f_op_f32(sign(arg_0.b.d.x)))), -2135f, arg_0.b.d, var_1.x);
    return select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(arg_0.b.e, 11799u) << (vec2<u32>(arg_0.c.e, 0u) % vec2<u32>(32u))), var_3.e, abs(~arg_0.b.e), 49406u), max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.e, arg_0.c.e, 16639u, var_1.x), vec4<u32>(20524u, 4294967295u, 42742u, 8126u)), countOneBits(vec4<u32>(var_1.x, var_1.x, var_3.e, 14637u))) & _wgslsmith_add_vec4_u32(~vec4<u32>(var_3.e, var_3.e, 4294967295u, 36213u), max(vec4<u32>(34594u, var_3.e, arg_0.b.e, 55763u), vec4<u32>(1u, 86942u, 43715u, arg_0.c.e)))), countOneBits(_wgslsmith_mult_u32(61847u, countOneBits(4294967295u))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 19>();
    let var_0 = false;
    global0 = array<vec3<f32>, 19>();
    var var_1 = 4294967295u;
    global0 = array<vec3<f32>, 19>();
    let var_2 = vec3<u32>(0u, 17618u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(2034u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 1u))), ~func_1(Struct_2(vec2<bool>(var_0, var_0), Struct_1(1451f, true, 934f, global0[_wgslsmith_index_u32(146047u, 19u)], 62436u), Struct_1(1046f, true, -295f, vec3<f32>(109f, -1000f, -1034f), 1u)))) | ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(53499u, 31950u), vec2<u32>(45614u, 1248u)), 0u, false));
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) - 1413f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1528f - _wgslsmith_f_op_f32(floor(-1309f)))))));
}

