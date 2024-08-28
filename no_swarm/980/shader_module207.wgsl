struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<u32, 5> = array<u32, 5>(0u, 0u, 1u, 1u, 59444u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~71103i;
    var_0 = 2147483647i;
    var var_1 = global1.a;
    global2 = array<u32, 5>();
    var_1 = global1.a;
    var_0 = u_input.a;
    var_1 = !(312i > ~(u_input.e.x | (u_input.c >> (34299u % 32u))));
    var var_2 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xy, ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-737f)))), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1939f, -783f, -957f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-325f, 1300f, 1000f), vec3<f32>(-715f, 149f, -479f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-205f, -435f, 1000f), vec3<f32>(-1576f, -636f, 1000f)))))));
}

