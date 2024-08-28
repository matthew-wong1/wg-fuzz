struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-2082f, -1929f, 253f), vec3<f32>(-384f, -1842f, -1073f), vec3<f32>(-472f, 251f, -1254f));

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 7970u, 82889u), vec3<u32>(0u, 48843u, 0u), vec3<u32>(14657u, 62182u, 4294967295u), vec3<u32>(31047u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 0u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global1 = array<vec3<u32>, 5>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1400f, arg_2.c.x)))))));
    let var_1 = arg_2.a;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.c.x - 392f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1272f, arg_2.c.x) - _wgslsmith_f_op_f32(-1000f + arg_2.c.x)))), arg_2.c.x);
    var var_2 = !any(vec4<bool>(true, true, true, true));
    return reverseBits(arg_3.x ^ -2147483647i);
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = ~(-u_input.a.x ^ _wgslsmith_dot_vec4_i32(select(firstLeadingBit(u_input.c), ~vec4<i32>(u_input.b, 48038i, u_input.b, u_input.b), all(vec4<bool>(false, true, false, true))), select(vec4<i32>(u_input.b, u_input.b, 42760i, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -23351i, u_input.b, 5833i), vec4<i32>(-26123i, u_input.b, 1i, 1i), u_input.c), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))));
    global1 = array<vec3<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(366f, -236f, 1475f, 1168f), vec4<f32>(353f, -1055f, -2306f, -701f)) - vec4<f32>(-879f, 1889f, 1492f, -526f)))))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, ~11422u), 4294967295u)), Struct_1(max(~abs(arg_0.x), firstLeadingBit(~100490u))), 43008u);
    global0 = array<vec3<f32>, 3>();
    return max(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(0u), var_2.b.a, arg_0.x), 5u)], global1[_wgslsmith_index_u32(0u, 5u)]);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_1(9395u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, -356f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(243f, 152f) + vec2<f32>(-459f, -367f)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, -659f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1812f), _wgslsmith_f_op_f32(floor(370f))))), false)));
    var var_2 = u_input.a.xzz;
    return vec4<i32>(func_2(Struct_4(var_0, var_0, ~arg_0), var_0.a, Struct_2(select(vec4<u32>(arg_0, var_0.a, arg_0, 96245u), vec4<u32>(16443u, 31966u, var_0.a, var_0.a), vec4<bool>(false, false, false, false)), var_0, vec3<f32>(var_1.x, -1854f, -714f)), -var_2.yy) & ~2147483647i, -40873i, 1i, 26394i);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_4 {
    let var_0 = -(~vec4<i32>(1i, -arg_2, func_2(Struct_4(arg_1.b.b, arg_1.b.b, arg_1.b.b.a), arg_1.b.a.x, arg_1.b, u_input.a.zz), i32(-1i) * -43699i) ^ func_4(arg_1.d, ~func_3(vec2<u32>(0u, arg_1.b.a.x))));
    global0 = array<vec3<f32>, 3>();
    let var_1 = 729f;
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    return Struct_4(arg_1.b.b, arg_1.b.b, arg_1.d);
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-773f, _wgslsmith_f_op_f32(floor(-1114f)))));
    global1 = array<vec3<u32>, 5>();
    let var_1 = u_input.b;
    var var_2 = arg_0.a;
    let var_3 = -abs(-18652i ^ u_input.c.x);
    return !vec3<bool>(!(select(-75874i, var_3, true) >= arg_1), !(any(vec3<bool>(false, false, false)) && true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 3>();
    var var_0 = select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(all(func_5(func_1(vec4<bool>(false, true, true, false), Struct_3(vec2<bool>(false, true), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), Struct_1(14657u), global0[_wgslsmith_index_u32(0u, 3u)]), vec4<f32>(-736f, 1744f, 1436f, -263f), 1u, -2147483647i), u_input.b, u_input.c.x), 1i)), select(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true))), !(!all(vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1274f));
}

