struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
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

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-1016f), Struct_1(-2182f), Struct_1(2728f), Struct_1(268f), Struct_1(-1153f), Struct_1(-481f), Struct_1(-1085f), Struct_1(-1075f), Struct_1(1314f), Struct_1(-1919f), Struct_1(840f), Struct_1(1315f), Struct_1(1311f), Struct_1(-882f), Struct_1(-342f), Struct_1(-1123f), Struct_1(-144f), Struct_1(-1000f), Struct_1(-458f), Struct_1(1004f), Struct_1(949f), Struct_1(-343f), Struct_1(900f), Struct_1(395f));

var<private> global2: array<vec2<u32>, 14>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    global1 = array<Struct_1, 24>();
    global2 = array<vec2<u32>, 14>();
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c.x, firstTrailingBit(0i)), -1033i, -(_wgslsmith_mod_i32(u_input.b.x, u_input.d.x | u_input.c.x) >> (u_input.a.x % 32u)));
    global1 = array<Struct_1, 24>();
    global2 = array<vec2<u32>, 14>();
    return ~(~abs(arg_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<vec4<bool>, 25>();
    var var_0 = firstLeadingBit(~vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), global2[_wgslsmith_index_u32(4294967295u, 14u)]), func_3(vec4<u32>(43597u, u_input.a.x, 82691u, 43963u), true, true, false)), ~8981u, ~(~4294967295u), u_input.a.x));
    var var_1 = vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, _wgslsmith_add_u32(1770u, u_input.e.x) >= max(var_0.x, 1u))), false);
    let var_2 = arg_2.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(sign(arg_3.a)))), arg_1);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(890f + 232f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1347f))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-1427f)));
    let var_2 = u_input.c.x;
    let var_3 = ~0u;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1559f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1312f + -528f), _wgslsmith_f_op_f32(var_1.a * var_1.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, 936f) * vec2<f32>(var_1.a, -705f)) * vec2<f32>(-836f, var_1.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, 264f), vec2<f32>(-481f, 2124f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 24u)], 960f, vec2<i32>(var_2, -47833i), Struct_1(var_0.a)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-452f * -212f), 114f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.e.x, u_input.e.x), ~vec4<u32>(1u, u_input.e.x, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 105837u, 18521u), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.a.x)), ~vec4<u32>(u_input.e.x, 1u, u_input.a.x, 0u))), select(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, -2147483647i, u_input.c.x), u_input.d), Struct_1(var_0.a)), true, any(vec3<bool>(true, false, true)))), 52836u, -845f);
}

