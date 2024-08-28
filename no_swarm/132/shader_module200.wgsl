struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1022f, -1029f), vec2<f32>(-154f, 1586f), vec2<f32>(155f, 621f), vec2<f32>(1313f, 1000f), vec2<f32>(1116f, -169f), vec2<f32>(219f, -318f), vec2<f32>(536f, 339f));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 19>();
    global1 = array<vec2<f32>, 7>();
    let var_0 = !global2.c;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -560f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(221f, var_1, _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(ceil(var_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 234f, var_1, -460f) + vec4<f32>(var_1, 930f, -1832f, var_1)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), 116f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(719f * 788f))), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(min(-1000f, 1111f)), _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, var_1, 1376f, var_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-904f, 1418f, 1995f, -1055f) - vec4<f32>(396f, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(862f, var_1, var_1, var_1)))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(reverseBits(abs(vec2<i32>(40124i, 2577i))), _wgslsmith_div_vec2_i32(max(vec2<i32>(17630i, u_input.c), vec2<i32>(u_input.c, 4982i)), vec2<i32>(u_input.d, u_input.d))), var_2.x, 1i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.x)), var_1, _wgslsmith_f_op_f32(1654f + 2264f)), _wgslsmith_div_vec3_f32(var_2.wyy, var_2.xwx)))));
}

