struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: vec2<f32> = vec2<f32>(417f, -232f);

var<private> global2: array<vec4<i32>, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    global0 = array<bool, 29>();
    var var_0 = u_input.c.x;
    global2 = array<vec4<i32>, 27>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(u_input.a == countOneBits(u_input.a)))));
    var var_1 = arg_2.b.xwy;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 452f, -2753f, 982f)), vec4<f32>(530f, global1.x, global1.x, global1.x), !arg_2.b))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-704f, 1289f, arg_2.d.x, global1.x))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.d.yw, u_input.b, Struct_1(vec4<f32>(global1.x, 717f, -476f, 445f), arg_0, vec4<u32>(47763u, u_input.d.x, u_input.d.x, 40473u), vec3<f32>(global1.x, -1057f, -2838f)), u_input.d)) + _wgslsmith_div_vec4_f32(vec4<f32>(457f, 619f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, global1.x, -856f, global1.x) * vec4<f32>(-221f, -763f, 1164f, -856f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, global1.x, 1305f, global1.x)))), arg_0.x))), arg_0, u_input.d, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1250f, _wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(abs(-1498f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f))));
    global0 = array<bool, 29>();
    global2 = array<vec4<i32>, 27>();
    let var_1 = ~select(33655u >> (~u_input.b % 32u), ~(~arg_2.c.x), all(func_2(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], arg_2.b.x, false), arg_1.b, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], false, arg_1.b.x, false))).b.zy));
    var var_2 = ~_wgslsmith_add_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(29025u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), -41727i);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.x)) + _wgslsmith_f_op_f32(428f * 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.d.x + -1422f))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(u_input.d, func_2(vec4<bool>(global0[_wgslsmith_index_u32(~49244u, 29u)], true, global1.x == -892f, !global0[_wgslsmith_index_u32(61710u, 29u)])), func_2(func_2(!vec4<bool>(true, global0[_wgslsmith_index_u32(22126u, 29u)], true, true)).b))), vec4<bool>(func_2(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], false, false, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])).b.x || global0[_wgslsmith_index_u32(abs(abs(4294967295u)), 29u)], select(!(!global0[_wgslsmith_index_u32(4294967295u, 29u)]), true, true), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d.x, 35530u), 0u), 29u)], global0[_wgslsmith_index_u32(~u_input.b ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.d.x, u_input.b), vec3<u32>(0u, 21190u, u_input.d.x)), 29u)]), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, firstTrailingBit(~u_input.d)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 1u, 8505u, 123488u), u_input.d), _wgslsmith_mult_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.b, 0u), u_input.d), firstTrailingBit(vec4<u32>(u_input.d.x, 1u, 1u, u_input.b))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(round(global1.x))));
    let var_1 = vec3<i32>(~6295i, u_input.a, -25196i);
    let var_2 = all(var_0.b);
    var var_3 = var_0.d;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1131f, var_3.x)) * vec2<f32>(_wgslsmith_f_op_f32(min(-1207f, 792f)), 725f)) + _wgslsmith_f_op_vec2_f32(var_3.yz + var_3.xy)) + var_0.d.yx);
    return vec2<f32>(-174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f + -1833f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x)))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 728f)))))))));
    let var_0 = u_input.d;
    global0 = array<bool, 29>();
    var var_1 = func_2(vec4<bool>(func_2(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 29u)], true, true), global0[_wgslsmith_index_u32(u_input.b, 29u)])).b.x, !(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 29u)])) | true), func_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], false), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_0.x, 29u)]), false)).b.x, all(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 29u)], true, false)) && (global1.x == _wgslsmith_f_op_f32(global1.x - global1.x))));
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(f32(-1f) * -1363f), var_1.d.x, var_1.a.x)))), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], false, true), abs(~(~vec4<u32>(4294967295u, var_1.c.x, 5483u, u_input.d.x))), _wgslsmith_f_op_vec3_f32(max(var_1.a.xxz, vec3<f32>(global1.x, global1.x, global1.x))));
    var var_2 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, u_input.c, ~firstTrailingBit(u_input.a) > _wgslsmith_mult_i32(firstTrailingBit(27600i), 1i >> (u_input.d.x % 32u))), vec4<u32>(4294967295u, var_1.c.x, ~437u, 0u), ~_wgslsmith_div_u32(var_1.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(33502u, var_1.c.x), u_input.b)), -1447f);
}

