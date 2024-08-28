struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(5968u, true, vec2<f32>(1229f, -159f), 52493i), 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.c.x, 1547f, global0.a.c.x), vec3<f32>(850f, 1577f, -535f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c.x, global0.a.c.x, -342f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1389f, 1168f, global0.a.c.x) - vec3<f32>(-423f, 1199f, global0.a.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(263f, _wgslsmith_f_op_f32(291f + global0.a.c.x), _wgslsmith_f_op_f32(-global0.a.c.x))))));
}

