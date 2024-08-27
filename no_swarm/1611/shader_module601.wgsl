struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
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

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(false, 69010u, -571f, 1u, -352f), Struct_3(true, 4294967295u, -1176f, 1u, -1591f), Struct_3(false, 4859u, -1000f, 15333u, 1000f), Struct_3(false, 1u, -923f, 18678u, 519f), Struct_3(true, 1u, -1000f, 14085u, -563f), Struct_3(false, 78627u, -1869f, 92176u, -1047f), Struct_3(false, 0u, 1200f, 41102u, 712f), Struct_3(false, 0u, -1000f, 1u, 139f), Struct_3(false, 43888u, 2057f, 45841u, 139f), Struct_3(true, 57791u, 530f, 0u, 2253f), Struct_3(true, 0u, -1000f, 46970u, 2247f), Struct_3(true, 4294967295u, -1632f, 31874u, -167f), Struct_3(true, 4294967295u, -567f, 0u, -150f), Struct_3(true, 5524u, -222f, 91282u, -206f), Struct_3(false, 26455u, 437f, 1u, 296f));

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
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, -1000f, -347f, 896f) - vec4<f32>(367f, -479f, -274f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(179f, 870f, 1819f, 812f), vec4<f32>(-1195f, -227f, -199f, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, -277f, -533f, 935f)), _wgslsmith_div_vec4_f32(vec4<f32>(-226f, 391f, 679f, 457f), vec4<f32>(1487f, -420f, 1460f, -1666f)), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))))));
}

