struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(1i, 10360i), vec2<i32>(-29012i, -1i));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = vec3<i32>(u_input.b, u_input.b, -u_input.b);
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(0u, 2u)];
    let var_3 = var_2.x ^ -var_2.x;
    let var_4 = 0u;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(448f, -1649f, 231f)) + arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * arg_2)))))), arg_2);
}

fn func_1() -> vec3<i32> {
    global0 = array<vec2<i32>, 2>();
    global1 = array<Struct_1, 14>();
    var var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(f32(-1f) * -1304f))), _wgslsmith_f_op_f32(ceil(695f)), -135f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1675f, -709f, 531f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1279f, -457f, -391f), _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, false), Struct_1(1343f), vec3<f32>(-810f, 446f, -803f))))))));
    global1 = array<Struct_1, 14>();
    return vec3<i32>(u_input.b, u_input.a, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    global1 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(1734f, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(459f * -923f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) - _wgslsmith_div_f32(652f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -666f))), _wgslsmith_f_op_f32(step(266f, 1000f))), 654f));
}

