struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1236f, -1107f, -1000f, 678f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x) + global1.a.x), _wgslsmith_f_op_f32(select(675f, _wgslsmith_f_op_f32(f32(-1f) * -207f), false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_vec4_f32(-global1.a))) - global1.a) - vec4<f32>(-1000f, 213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(285f))), -1047f)));
    var_0 = _wgslsmith_f_op_f32(floor(var_1.x));
    var_1 = global1.a;
    var_1 = vec4<f32>(-121f, _wgslsmith_f_op_f32(ceil(1258f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f))))), _wgslsmith_f_op_f32(ceil(global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x << ((abs(11224u) & select(u_input.b.x, u_input.b.x, false)) % 32u), ~(~4294967295u), ~(~u_input.b.x >> (u_input.c.x % 32u)), u_input.c.x));
}

