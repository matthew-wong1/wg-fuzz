struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -838f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2137f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(1u, 4294967295u)), select(~min(vec2<u32>(30694u, u_input.b), vec2<u32>(u_input.b, 3340u)), abs(vec2<u32>(3812u, u_input.c) & vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1039f) < _wgslsmith_f_op_f32(step(-1324f, 545f))) ^ vec2<u32>(u_input.b, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-680f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-153f)), _wgslsmith_f_op_f32(sign(-1429f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1341f)), _wgslsmith_f_op_f32(sign(-2025f)), true)), 587f))));
}

