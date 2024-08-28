struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~40652u, firstLeadingBit(select(87682u, 55653u, true)))));
    global0 = array<Struct_3, 11>();
    var var_1 = vec2<f32>(-203f, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.a)));
    return _wgslsmith_f_op_f32(select(-263f, _wgslsmith_f_op_f32(round(var_1.x)), select(true, true, any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    global0 = array<Struct_3, 11>();
    let var_0 = global0[_wgslsmith_index_u32(~(~1u), 11u)];
    global0 = array<Struct_3, 11>();
    var var_1 = Struct_1(arg_0);
    global0 = array<Struct_3, 11>();
    return global0[_wgslsmith_index_u32(31993u, 11u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_2;
    let var_1 = ~(~select(~vec4<u32>(6197u, 4294967295u, arg_1.a.x, arg_1.a.x), vec4<u32>(arg_1.a.x, arg_1.a.x, firstLeadingBit(4294967295u), _wgslsmith_div_u32(0u, arg_1.a.x)), any(!vec3<bool>(arg_3.x, false, arg_3.x))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1300f, -866f, arg_0.a, -394f) + vec4<f32>(-595f, -1169f, 959f, arg_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, arg_0.a, 1290f, arg_0.a)), arg_1.e))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(248f, -1000f, -629f, -776f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, arg_0.a, var_2.a, -953f)))))), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, -269f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let var_0 = ~(_wgslsmith_div_vec3_i32(select(select(vec3<i32>(u_input.a, u_input.c, 51480i), vec3<i32>(arg_0.a, u_input.c, -2147483647i), vec3<bool>(arg_0.b, true, arg_1.b)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1119i, 31242i), vec3<i32>(arg_1.a, arg_0.a, -36079i)), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -36156i, -41058i) >> (arg_2 % vec3<u32>(32u)), vec3<i32>(-2147483647i, arg_1.a, u_input.a))) | (vec3<i32>(-1i) * -(vec3<i32>(25309i, 881i, 0i) ^ vec3<i32>(-1i, -26607i, arg_0.a))));
    global0 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)));
    return global0[_wgslsmith_index_u32((~1u ^ ~max(~1u, 4294967295u << (arg_2.x % 32u))) ^ max(arg_2.x, select(29567u, _wgslsmith_sub_u32(~arg_2.x, ~38304u), arg_0.b)), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -608f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1285f, _wgslsmith_f_op_f32(f32(-1f) * -217f), -928f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(194f)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1633f * 347f), -480f, -937f, _wgslsmith_f_op_f32(f32(-1f) * -1129f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, 1000f, 359f, -722f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1458f, 1637f, 1609f, 859f) - vec4<f32>(538f, -392f, 235f, -980f))), true))));
    let var_2 = true;
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1000f)), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-var_1.x), true))))));
    let var_3 = func_4(Struct_2(-34408i, any(!vec4<bool>(var_2, false, true, var_2))), Struct_2(-1i, select(true, var_2, _wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(round(832f)))), ~vec3<u32>(abs(~0u), ~1u, _wgslsmith_mult_u32(1u, select(1u, 0u, var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1006f), func_2(-920f, vec2<u32>(4294967295u, 69173u)), ~(-42637i), vec4<bool>(true, var_2, true, true))) * var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 626f)) * _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(round(-302f)))))));
    global0 = array<Struct_3, 11>();
    var var_4 = 56478i;
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(662f, 1000f, -1000f, -628f))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x))), var_1.x, 591f, _wgslsmith_f_op_f32(floor(861f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-746f, -903f, var_1.x, var_1.x) + vec4<f32>(-583f, -1551f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, 514f, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(38711i);
}

