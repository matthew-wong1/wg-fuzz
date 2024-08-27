struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1000f, -348f, 468f, -396f), vec4<f32>(792f, -802f, -389f, -1062f), vec4<f32>(614f, 125f, -1377f, -350f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 3>();
    let var_0 = Struct_4(u_input.c, vec2<bool>((u_input.a.x << (~4294967295u % 32u)) == countOneBits(-u_input.b), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-647f)), _wgslsmith_f_op_f32(2151f - -698f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-723f, -2219f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(284f, -1000f) - vec2<f32>(-799f, 929f))))));
    let var_1 = 31006u;
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~14696u));
}

