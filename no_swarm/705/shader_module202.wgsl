struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 1i, 2147483647i, 10965i);

var<private> global1: i32;

var<private> global2: f32 = 225f;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_i32(u_input.b.x, abs(42077i), -global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-243f * -307f)))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2848f, -442f))) + _wgslsmith_f_op_f32(1254f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1518f)), _wgslsmith_f_op_f32(f32(-1f) * -724f)))));
}

