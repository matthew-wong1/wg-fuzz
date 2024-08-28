struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<Struct_1, 9>();
    let var_0 = arg_0;
    var var_1 = arg_0.a;
    global0 = array<Struct_1, 9>();
    let var_2 = all(arg_0.c.xx);
    return vec2<u32>(u_input.a, 1u);
}

fn func_2() -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_1 = true;
    var var_2 = vec2<u32>(~firstTrailingBit(4294967295u), ~u_input.a);
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return StorageBuffer(var_0.b, ~min(~vec2<u32>(u_input.a, 1u) | func_3(Struct_2(var_0.b, global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<bool>(false, var_0.a, var_0.a), Struct_1(false, var_0.b), vec2<bool>(true, true)), 31403u, Struct_2(44802i, global0[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(var_0.a, false, var_0.a), global0[_wgslsmith_index_u32(var_2.x, 9u)], vec2<bool>(true, true))), ~(~vec2<u32>(var_2.x, 13594u))));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1356f, -734f, -363f, -182f), vec4<f32>(1592f, 283f, 308f, -1000f), false))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), -977f, _wgslsmith_f_op_f32(213f + -1608f), _wgslsmith_f_op_f32(241f - 137f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-348f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-771f, 984f)) + _wgslsmith_f_op_f32(max(1201f, -890f)))), 301f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-915f, -742f)), 102f), 122f)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~(4294967295u | (u_input.a & ~37232u)));
}

