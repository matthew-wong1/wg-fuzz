struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1148f, 2010f, -1080f));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), 21277i, vec3<f32>(1061f, 931f, -554f), vec3<u32>(66036u, 1720u, 79315u));

var<private> global3: array<f32, 32> = array<f32, 32>(-516f, 424f, 1050f, 517f, 373f, -629f, 1053f, -757f, -104f, 895f, -909f, -401f, 875f, -1109f, -949f, 334f, -1542f, -1129f, 2266f, -1341f, -341f, 606f, 879f, 656f, -1461f, -1000f, -687f, 1462f, -1000f, -194f, -1230f, 959f);

var<private> global4: array<vec4<bool>, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 1>();
    var var_0 = !global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(~46239u, ~global1.d.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34307u, u_input.a), global1.d), _wgslsmith_mod_u32(0u, 1u)), vec3<u32>(~global2.d.x, u_input.a, u_input.a >> (0u % 32u))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(-151f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 32u)], global1.c.x, global3[_wgslsmith_index_u32(global2.d.x, 32u)], 1343f) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], global1.c.x, -1262f, global1.c.x)), vec4<f32>(-1000f, global2.c.x, global3[_wgslsmith_index_u32(4294967295u, 32u)], -362f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global1.c.x, -3517f, global1.c.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.x, global1.c.x, global2.c.x, global1.c.x))))))));
}

