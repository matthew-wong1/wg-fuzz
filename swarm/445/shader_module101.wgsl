struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-870f, 2301f, 475f, -676f), vec4<f32>(-635f, 1604f, -482f, -631f), vec4<f32>(-597f, 422f, 296f, -579f), vec4<f32>(-228f, -472f, -430f, -424f), vec4<f32>(-371f, -1465f, -632f, 1645f), vec4<f32>(-140f, -842f, 1085f, 1572f), vec4<f32>(-1252f, 309f, 886f, -503f), vec4<f32>(245f, -1270f, 401f, 1560f), vec4<f32>(-365f, -346f, 537f, 1091f), vec4<f32>(374f, 426f, -1365f, 897f), vec4<f32>(-454f, 201f, -572f, -326f), vec4<f32>(-886f, -598f, 1420f, -433f), vec4<f32>(143f, -214f, -460f, -247f), vec4<f32>(-1235f, 474f, -169f, 1036f), vec4<f32>(-386f, 159f, -1000f, -188f), vec4<f32>(-934f, 1102f, 748f, -674f), vec4<f32>(1640f, -398f, -981f, 1136f), vec4<f32>(-1481f, 2217f, 186f, 1894f), vec4<f32>(-528f, -1000f, 197f, 299f), vec4<f32>(467f, 469f, 2133f, -1086f));

var<private> global3: array<u32, 13> = array<u32, 13>(1u, 0u, 28382u, 28210u, 0u, 21581u, 4294967295u, 54382u, 95746u, 4294967295u, 1u, 1u, 465u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = -(~2147483647i);
    global3 = array<u32, 13>();
    global3 = array<u32, 13>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)))) + -957f));
    global0 = array<u32, 26>();
    return global3[_wgslsmith_index_u32(1u, 13u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 26>();
    global1 = Struct_1(arg_0.a);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, -242f, -701f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(round(662f)), _wgslsmith_f_op_f32(exp2(arg_0.a)), global1.a, arg_2.x))) + global2[_wgslsmith_index_u32(func_3(~4294967295u, arg_0), 20u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x))) + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 20u)])), false));
    let var_1 = _wgslsmith_f_op_f32(-global1.a);
    global0 = array<u32, 26>();
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-select(-17261i, arg_0, arg_3.x), -(i32(-1i) * -5906i))), ~select(firstTrailingBit(~u_input.a.zy), vec2<i32>(-arg_0, 17743i), arg_3.x));
    global0 = array<u32, 26>();
    var var_1 = Struct_1(arg_2.a);
    var_0 = u_input.a.yz;
    var_1 = arg_2;
    return func_2(func_2(Struct_1(var_1.a), firstTrailingBit(~u_input.e.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 26u)], 20u)], vec4<f32>(arg_2.a, global1.a, global1.a, -1187f))))))), vec2<i32>(-2147483647i >> (_wgslsmith_div_u32(arg_1.x, u_input.d) % 32u), _wgslsmith_div_i32(-1i, 7786i)) & u_input.c, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(17149u, 20u)] - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, _wgslsmith_f_op_f32(468f - global1.a), _wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(var_1.a - 3476f)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = u_input.c.x;
    var var_2 = func_4(countOneBits(_wgslsmith_div_i32(1392i, ~u_input.e.x >> (17624u % 32u))), vec4<u32>(~(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(40266u, 26u)], 5430u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 52683u), vec2<u32>(61089u, global0[_wgslsmith_index_u32(4294967295u, 26u)]))), vec2<u32>(u_input.d << (22720u % 32u), ~4294967295u)), max(~global3[_wgslsmith_index_u32(~25935u, 13u)], ~(~u_input.d)), 29239u), func_2(arg_0, u_input.a.zx, global2[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 26u)]) ^ (abs(global3[_wgslsmith_index_u32(u_input.d, 13u)]) << ((global3[_wgslsmith_index_u32(u_input.d, 13u)] >> (global3[_wgslsmith_index_u32(42135u, 13u)] % 32u)) % 32u)), 20u)]), select(vec4<bool>(!(4294967295u != global0[_wgslsmith_index_u32(11289u, 26u)]), !arg_2, true, false), select(select(!vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(false, arg_2, false, arg_2), !vec4<bool>(true, false, arg_2, arg_2)), vec4<bool>(global1.a < var_0.a, !arg_2, any(vec4<bool>(true, false, false, false)), arg_2), select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(false, arg_2, true, false)), true)), any(vec2<bool>(false, arg_2))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1233f));
    let var_4 = u_input.c.x & (_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_1, -6564i, u_input.c.x)), u_input.a & u_input.a, u_input.a), u_input.a) << (~_wgslsmith_div_u32(u_input.d ^ 0u, max(4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 26u)], 26u)], 13u)])) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a);
    var var_1 = !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1998f, 1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-897f, -1120f, global1.a))), !vec3<bool>(var_1.x, var_1.x, var_1.x))) + vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(1106f), u_input.a.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -973f), 596f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -1013f, var_0.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, var_0.a, var_0.a))))));
}

