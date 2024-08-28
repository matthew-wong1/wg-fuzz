struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = false | !arg_0.c;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -673f), _wgslsmith_div_f32(-1146f, 759f), _wgslsmith_f_op_f32(select(-1984f, _wgslsmith_f_op_f32(max(1000f, -1565f)), any(vec3<bool>(arg_0.a, false, arg_0.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), 1481f, _wgslsmith_f_op_f32(abs(-517f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1802f, _wgslsmith_f_op_f32(661f * -1306f))), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1598f, 2164f, 315f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2389f, 521f, 1298f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1294f, 1095f, 1430f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1583f, -113f, 796f), vec3<f32>(342f, -1003f, 1503f)))))));
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    let var_1 = all(vec4<bool>(true, arg_0.a, true, true));
    return var_1;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.d.x;
    var var_1 = 1i;
    let var_2 = vec2<bool>(false, all(!vec2<bool>(arg_1.b.x > arg_2.b.x, func_3(arg_2))));
    let var_3 = arg_2;
    var var_4 = vec2<u32>(~(~(~(~4294967295u))), ~(~u_input.c));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = ~u_input.c;
    var_0 = ~_wgslsmith_div_u32(u_input.c, _wgslsmith_mult_u32(_wgslsmith_mod_u32(49318u, 4294967295u), ~func_2(false, arg_0, arg_0)));
    var_0 = u_input.c << (0u % 32u);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -772f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -548f))), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1857f) * _wgslsmith_f_op_f32(f32(-1f) * -525f)), all(vec3<bool>(arg_0.a, arg_1.x, true))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-782f, 1000f, _wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(arg_2 - arg_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(ceil(arg_2))))))));
    global1 = func_3(Struct_1(arg_0.c, arg_0.b, true));
    return -242f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(56366i, -3358i);
    global1 = -775f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(614f))) - -996f), 554f));
    global0 = array<vec3<u32>, 14>();
    var var_1 = -2147483647i << (~(~0u) % 32u);
    global0 = array<vec3<u32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(false, u_input.d, true), vec3<bool>(true, false, true), -654f)), -460f), 1703f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, 1841f) + -1000f) * -1885f)), _wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(false, u_input.d, true), vec3<bool>(false, false, false), _wgslsmith_f_op_f32(f32(-1f) * -473f))))), vec2<u32>(~u_input.c, u_input.c), _wgslsmith_sub_u32(~(49219u | ~u_input.c), ~(~u_input.c << (_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(91929u, 14u)], vec3<u32>(20921u, u_input.c, 74956u)) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1630f, 1182f, 101f), vec3<f32>(-430f, 955f, -1542f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-3031f, 660f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, 1959f, 1293f)))))));
}

