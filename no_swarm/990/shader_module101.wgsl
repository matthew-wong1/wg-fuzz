struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: Struct_4 = Struct_4(-950f);

var<private> global2: Struct_3 = Struct_3(Struct_2(-3990i, 63339u, Struct_1(vec2<f32>(-454f, 264f), 1u, vec4<u32>(1u, 0u, 1u, 0u), -1571f, 96878u), Struct_1(vec2<f32>(-309f, 1397f), 1u, vec4<u32>(0u, 0u, 83113u, 29823u), -874f, 8288u)));

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, global3.x, global1.a, global2.a.c.d)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, global2.a.c.d, 241f, 1739f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, -279f) - vec4<f32>(278f, global3.x, -941f, global2.a.c.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, global2.a.c.d, 688f, global2.a.c.d))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global3.x, global1.a, -662f), vec4<f32>(-804f, global3.x, 326f, global1.a)))), all(vec2<bool>(true, global2.a.c.d >= global2.a.d.d)))));
}

