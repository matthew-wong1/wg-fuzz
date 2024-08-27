struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: vec3<f32> = vec3<f32>(-1150f, -1363f, 250f);

var<private> global2: array<u32, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(435f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(ceil(872f)), global1.x != global1.x)), _wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1336f, global1.x, -1000f), vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(1000f)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(415f, 1505f)), _wgslsmith_f_op_f32(-352f * _wgslsmith_f_op_f32(min(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(126f, 573f))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(global1.yx));
    var var_1 = !(!vec3<bool>(false, _wgslsmith_f_op_f32(-var_0.x) == var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), -352f, u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(755f, global1.x, 1538f))) - vec3<f32>(-179f, -1000f, _wgslsmith_f_op_f32(var_0.x + var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1.x, var_0.x) - vec3<f32>(global1.x, -556f, -2177f))))), i32(-1i) * -u_input.d);
}

