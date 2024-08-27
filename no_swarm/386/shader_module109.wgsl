struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-121f, 920f, 804f));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(906f, 730f, -1923f)), Struct_1(vec3<f32>(483f, 1869f, -641f)), Struct_1(vec3<f32>(-985f, -1000f, -633f)), Struct_1(vec3<f32>(-1000f, 222f, -1496f)), Struct_1(vec3<f32>(-1598f, -1922f, -295f)), Struct_1(vec3<f32>(344f, 537f, 1000f)), Struct_1(vec3<f32>(285f, -1882f, 172f)), Struct_1(vec3<f32>(-176f, -979f, -1046f)), Struct_1(vec3<f32>(1121f, 189f, 624f)), Struct_1(vec3<f32>(-754f, -1000f, 1584f)), Struct_1(vec3<f32>(-1000f, -777f, 544f)), Struct_1(vec3<f32>(-264f, 691f, -495f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, -2167f, global0.x, global1.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 2436f, global1.a.x))))));
}

