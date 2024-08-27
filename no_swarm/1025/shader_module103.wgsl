struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(false, false), 0u, true, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, false), 41794u, true, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, false), 4294967295u, false, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(true, false), 30867u, false, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), 26242u, true, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, true), 65215u, false, vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(true, false), 33039u, true, vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, false), 14455u, true, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(false, false), 29336u, true, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, true), 0u, false, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, false), 25993u, true, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, true), 0u, true, vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(true, true), 4294967295u, false, vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(false, true), 72955u, false, vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(true, true), 8569u, true, vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), 4294967295u, false, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, false), 9521u, true, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, false), 72429u, false, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, false), 28702u, false, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(true, false), 6314u, false, vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(false, false), 100265u, false, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(true, true), 19185u, false, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(true, false), 42586u, true, vec4<bool>(false, true, true, true)));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global3.b, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-635f, -2498f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f * _wgslsmith_f_op_f32(min(-1000f, 384f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-303f)))), _wgslsmith_f_op_f32(select(-1138f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-959f, -1421f)), _wgslsmith_f_op_f32(-141f * 1034f), any(vec3<bool>(true, global2.a.x, false)))), !any(vec2<bool>(false, global2.a.x))))));
}

