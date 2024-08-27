struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1211f)));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = 684f;
    var var_2 = vec4<u32>(5193u, _wgslsmith_mod_u32(65427u, 1u), ~max(u_input.c.x, ~reverseBits(4294967295u)), (u_input.a.x ^ 1u) >> (61395u % 32u));
    global0 = !(!(u_input.b >= 2147483647i));
    global0 = all(!vec4<bool>(_wgslsmith_div_f32(var_0, 464f) > _wgslsmith_f_op_f32(select(var_0, 1997f, true)), true, !select(false, true, false), true));
    var_1 = _wgslsmith_f_op_f32(-var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, ~(-22609i), u_input.b, -(~u_input.b)), vec3<i32>(0i, u_input.b, global1[_wgslsmith_index_u32(~(~reverseBits(u_input.a.x)), 11u)]), firstLeadingBit(global1[_wgslsmith_index_u32(22664u, 11u)] << (var_2.x % 32u)), _wgslsmith_mod_u32(~var_2.x, ~_wgslsmith_sub_u32(max(var_2.x, 1u), ~var_2.x)));
}

