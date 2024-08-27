struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = 1655f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(162f, 309f) * -1908f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-296f - 251f), 1000f)) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(796f - -582f)))));
    var var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(-1190f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1158f)) * _wgslsmith_f_op_f32(500f - 1723f)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f + -995f)))));
    global0 = array<bool, 5>();
    var var_2 = u_input.b.x;
    var var_3 = countOneBits(vec2<u32>(~1u, 16228u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

