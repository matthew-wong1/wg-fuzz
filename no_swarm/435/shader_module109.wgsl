struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(61850u);

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-361f, 849f, -989f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-381f))), 409f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2158f - -1025f))))));
    global1 = array<vec3<f32>, 1>();
    let var_1 = false;
    var var_2 = max(~reverseBits((vec2<u32>(u_input.c, 4294967295u) ^ vec2<u32>(62824u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18778u, 1u)], 1u)])) ^ vec2<u32>(70794u, 35195u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, u_input.c)), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], u_input.c), vec2<u32>(global0[_wgslsmith_index_u32(select(u_input.c, global0[_wgslsmith_index_u32(51866u, 1u)], false), 1u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12531u, u_input.c), vec3<u32>(u_input.c, 0u, 27863u)))) >> ((~vec2<u32>(1u, u_input.c) | abs(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(23387u, 1u)]))) % vec2<u32>(32u)));
    var var_3 = ~(-u_input.a) & u_input.b;
    return -21996i;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-525f, _wgslsmith_f_op_f32(f32(-1f) * -2338f))) + -763f), -1410f, true)), false));
    return u_input.a > func_3();
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<u32, 1>();
    var var_0 = all(select(!select(vec3<bool>(arg_3.d.x, false, false), vec3<bool>(false, true, arg_3.d.x), arg_3.d.x), vec3<bool>(true, true, true), func_2(any(arg_3.d)))) & any(select(select(select(vec4<bool>(arg_3.d.x, arg_3.d.x, true, arg_3.c), vec4<bool>(arg_3.c, true, true, arg_3.c), arg_3.c), !vec4<bool>(arg_3.c, arg_3.d.x, true, arg_3.c), !arg_3.d.x), select(vec4<bool>(false, arg_3.d.x, arg_3.d.x, false), select(vec4<bool>(false, arg_3.d.x, arg_3.d.x, arg_3.d.x), vec4<bool>(true, arg_3.d.x, arg_3.c, false), vec4<bool>(false, true, arg_3.c, true)), vec4<bool>(true, arg_3.d.x, arg_3.d.x, true)), select(!vec4<bool>(false, arg_3.d.x, false, arg_3.d.x), !vec4<bool>(arg_3.d.x, arg_3.d.x, false, arg_3.d.x), !vec4<bool>(false, arg_3.d.x, false, arg_3.d.x))));
    var var_1 = u_input.b;
    global1 = array<vec3<f32>, 1>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), -374f, -568f))), _wgslsmith_f_op_vec4_f32(-arg_3.a));
    return var_2;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> f32 {
    global1 = array<vec3<f32>, 1>();
    let var_0 = ~vec2<u32>(global0[_wgslsmith_index_u32(0u ^ (arg_0.a.c.x << (7958u % 32u)), 1u)], 60339u);
    var var_1 = reverseBits(var_0.x) << (~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.c.x), vec2<u32>(32884u, var_0.x)), _wgslsmith_clamp_u32(0u, 0u, 0u)), 1u) % 32u);
    let var_2 = vec4<bool>(true, false, arg_0.a.a.x, true);
    var_1 = 59476u;
    return arg_0.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(vec2<bool>(true, true), Struct_2(vec3<f32>(-872f, 520f, 236f), vec4<f32>(2312f, 1500f, -285f, -332f)), vec3<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(28620u, 1u)], 0u), func_1(u_input.b, u_input.b, vec2<f32>(704f, 856f), Struct_1(vec4<f32>(-342f, -1053f, 1000f, -229f), vec3<u32>(u_input.c, u_input.c, 1u), true, vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, 791f, 199f, -1315f)), max(vec3<u32>(global0[_wgslsmith_index_u32(1880u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 1u), vec3<u32>(38511u, u_input.c, u_input.c)), false, vec2<bool>(true, false)), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(940f, -1439f, 957f))), _wgslsmith_div_vec4_f32(vec4<f32>(-594f, 120f, -671f, 434f), vec4<f32>(1023f, -971f, 153f, -1462f)))), Struct_4(func_1(firstLeadingBit(-38918i), ~u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(275f, -421f) + vec2<f32>(755f, 221f)), Struct_1(vec4<f32>(-2728f, 167f, -1024f, -1000f), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 1u)], 1u)], 1u)], 28901u, u_input.c), true, vec2<bool>(true, true))).b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-787f, 1465f))))));
    let var_1 = ((~u_input.b & reverseBits(-24449i)) << (1u % 32u)) >> (0u % 32u);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1261f, -415f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1152f, var_0))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(852f, var_0))))))), vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - var_0)), var_0));
    var var_3 = Struct_3(vec2<bool>(true, true), func_1(countOneBits(_wgslsmith_clamp_i32(~u_input.b, u_input.a, u_input.b)), 2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(230f, 234f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(140f, var_2.x)))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1271f, var_2.x, 1183f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-713f, var_0, -144f, var_0)))), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 46519u, global0[_wgslsmith_index_u32(0u, 1u)])) >> ((vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29736u, 1u)], 1u)], 0u, 95127u) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], 78135u, 4294967295u)) % vec3<u32>(32u)), ~global0[_wgslsmith_index_u32(0u, 1u)] != _wgslsmith_mod_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85858u, 1u)], 1u)]), vec2<bool>(true, true))), vec3<u32>(min(u_input.c, global0[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 1u)], 1u)]), 1u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(116473u, firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 1u)], 1u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11968u, 1u)], 1u)] % 32u))), 1u)], _wgslsmith_clamp_u32(~u_input.c, _wgslsmith_clamp_u32(countOneBits(u_input.c), 0u, 0u), ~firstLeadingBit(85145u))), func_1(abs(0i), _wgslsmith_sub_i32(-2147483647i, u_input.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(844f, 1000f), vec2<f32>(var_0, -844f), true))))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0, -1456f, -981f)))), vec3<u32>(1u, firstTrailingBit(u_input.c), u_input.c), all(vec3<bool>(true, true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.a.x, 616f, var_2.x) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.b.b.x, func_1(2147483647i, u_input.a, var_3.b.a.yz, Struct_1(vec4<f32>(var_2.x, -1527f, var_0, -973f), var_3.c, false, vec2<bool>(var_3.a.x, false))).b.x, -1063f)))), ~u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.d.b)));
}

