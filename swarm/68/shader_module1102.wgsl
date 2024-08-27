struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, _wgslsmith_f_op_f32(select(316f, 526f, false)), -1000f, _wgslsmith_f_op_f32(-1000f + -135f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, -1000f, -1383f, 2001f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1395f), -1733f, _wgslsmith_div_f32(1155f, 1054f), _wgslsmith_f_op_f32(f32(-1f) * -666f))))), max(~(~u_input.d.wz), u_input.b) | u_input.d.zw, -453f, 0u ^ u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true));
    let var_1 = ~(abs(firstLeadingBit(u_input.b ^ vec2<u32>(u_input.d.x, u_input.a.x))) & ~(~(~vec2<u32>(u_input.b.x, u_input.d.x))));
    global0 = 69923i;
    let var_2 = var_1.x;
    let x = u_input.a;
    s_output = func_1();
}

