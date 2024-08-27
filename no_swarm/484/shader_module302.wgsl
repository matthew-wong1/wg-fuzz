struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 1612i, -1i), vec2<f32>(-1170f, -1132f), vec3<f32>(1003f, 651f, -340f), 0i, 78421u);

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec2<bool>(true, true)) | all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = (select(~(global0.e & 1u), ~global0.e, !any(vec3<bool>(false, false, true))) > 4294967295u) != true;
    var_0 = global0.e <= ~(~1u);
    var var_1 = -319f;
    let var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.c.xy + vec2<f32>(global0.b.x, 753f)))))), vec2<f32>(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(abs(global0.c.x))), true)), global0.c, countOneBits(~global0.a.x), abs(global0.e));
    var var_3 = var_2.d;
    let var_4 = reverseBits(u_input.a & -20280i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.b.x, var_2.b.x, -369f)))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + global0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(685f, global0.b.x)), var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * -1049f)))));
}

