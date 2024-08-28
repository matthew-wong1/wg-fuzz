struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-1i, 15138i, 3996i, 2147483647i), Struct_2(-523f, -14557i, vec2<bool>(false, true), Struct_1(vec3<f32>(-1153f, 432f, -1080f), 501f, vec2<f32>(-398f, 1000f), 18412i, vec3<i32>(1i, 1i, -4502i)), true));

var<private> global1: Struct_3 = Struct_3(true, -1872f, vec2<bool>(false, true), Struct_1(vec3<f32>(-986f, -1147f, -138f), 196f, vec2<f32>(747f, -319f), -20716i, vec3<i32>(i32(-2147483648), 5654i, 0i)), Struct_2(732f, -1i, vec2<bool>(true, true), Struct_1(vec3<f32>(-1745f, -780f, 195f), 1384f, vec2<f32>(-509f, -1281f), -1i, vec3<i32>(0i, 5731i, 54624i)), false));

var<private> global2: f32 = 1000f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global0.b.d.a.x, global0.a.x, -(global0.a.x ^ u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(exp2(global0.b.a)), _wgslsmith_f_op_f32(floor(global0.b.d.c.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.b.a, 121f, -860f) + _wgslsmith_div_vec4_f32(vec4<f32>(407f, global1.b, 998f, 1000f), vec4<f32>(global0.b.d.b, global1.e.a, 1239f, 1682f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, 223f, global0.b.a, global1.e.a) - vec4<f32>(global0.b.d.a.x, -1535f, -906f, -762f))))))));
}

