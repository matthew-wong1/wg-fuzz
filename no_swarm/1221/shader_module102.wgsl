struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-2065f)), vec3<bool>(false, false, all(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f + -838f) * -1090f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f - -1211f) - 1f)))));
    global0 = 1384f;
    global1 = array<vec2<f32>, 7>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(792f + _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(sign(var_0.a)))));
    global0 = var_0.a;
    let var_1 = vec4<u32>(0u, abs(15020u), _wgslsmith_mod_u32(4130u, 30102u), firstLeadingBit(_wgslsmith_sub_u32(abs(~u_input.e), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(u_input.a.x)))));
    global0 = -292f;
    var var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

