struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, 805f, -998f, -558f) * vec4<f32>(1015f, 564f, 201f, 853f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-184f, -3089f, 2698f, -1513f), vec4<f32>(380f, -1000f, -1564f, -2027f))) - vec4<f32>(898f, 938f, 772f, 710f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(743f, 1567f, -965f, -371f), vec4<f32>(-1045f, -198f, 2091f, -1134f), var_0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-249f, -1499f, 1335f, 1238f), vec4<f32>(826f, 452f, -2077f, 316f)))))))), _wgslsmith_add_i32(~(-31136i), 32079i));
}

