struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(max(~4294967295u << (_wgslsmith_add_u32(select(0u, 0u, false), ~44466u) % 32u), 54207u), -1348f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(279f + -794f)) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -880f))))));
    global1 = array<vec3<bool>, 6>();
    return StorageBuffer(vec3<f32>(163f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) - _wgslsmith_f_op_f32(ceil(473f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(320f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f + 762f)), _wgslsmith_f_op_f32(f32(-1f) * -103f));
    var var_1 = Struct_1(~(~(firstLeadingBit(var_0.a) | max(71389u, 33979u))), _wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(-var_0.b));
    global0 = array<Struct_1, 29>();
    var var_2 = global0[_wgslsmith_index_u32(~var_0.a, 29u)];
    let var_3 = vec2<bool>(true, !any(vec2<bool>(true, true)));
    let var_4 = 101f <= var_2.c;
    var var_5 = select(!(true && (true & all(global1[_wgslsmith_index_u32(4294967295u, 6u)]))), var_3.x, !all(!vec2<bool>(var_4, true)) & any(select(!vec4<bool>(false, true, true, var_3.x), !vec4<bool>(false, var_4, false, var_3.x), var_4)));
    let x = u_input.a;
    s_output = func_1();
}

