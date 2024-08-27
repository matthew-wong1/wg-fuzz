struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 19>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(10955i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, 923f, -881f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -822f, -1000f) * vec3<f32>(-227f, 1000f, -1750f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1247f, 1601f, 2009f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, 1447f, 1500f))), false))), _wgslsmith_div_vec2_u32(vec2<u32>(max(~global0.a, ~4294967295u), firstTrailingBit(~1u)), ~min(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.c, 2979u), vec2<u32>(u_input.c, 53570u))), vec2<f32>(579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 2307f))))));
}

