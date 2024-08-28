struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false, vec4<bool>(false, true, true, false)), Struct_2(false, vec4<bool>(false, true, false, true)), Struct_2(true, vec4<bool>(true, true, false, false)), Struct_2(true, vec4<bool>(false, true, true, false)), Struct_2(true, vec4<bool>(false, true, false, false)), Struct_2(false, vec4<bool>(true, false, false, true)), Struct_2(false, vec4<bool>(true, true, true, false)), Struct_2(false, vec4<bool>(false, false, true, true)), Struct_2(false, vec4<bool>(false, false, false, true)), Struct_2(false, vec4<bool>(true, false, false, true)), Struct_2(true, vec4<bool>(true, true, false, true)), Struct_2(true, vec4<bool>(true, true, true, true)), Struct_2(true, vec4<bool>(true, false, false, true)), Struct_2(true, vec4<bool>(false, false, true, true)), Struct_2(false, vec4<bool>(false, true, true, true)), Struct_2(true, vec4<bool>(true, false, true, false)), Struct_2(false, vec4<bool>(true, true, false, true)));

var<private> global2: Struct_5 = Struct_5(0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~0u, reverseBits(global2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1802f, -708f, 726f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1413f, -268f, -1000f, 1618f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, 522f, -1553f, 1242f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, 1012f, -1000f, 1745f) * vec4<f32>(-2412f, -1321f, 526f, 1835f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1031f * _wgslsmith_f_op_f32(f32(-1f) * -481f)), -855f, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, -1315f, 512f, 1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, 1430f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(452f)), 847f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-631f)) + _wgslsmith_f_op_f32(trunc(-400f))), 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(11863u, _wgslsmith_add_u32(var_0.b, reverseBits(abs(0u)))));
}

