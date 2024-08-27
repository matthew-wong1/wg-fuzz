struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> bool {
    global1 = vec2<bool>(true, any(!select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, false, false), global1.x), select(vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, false), global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(false, true, false)))));
    var var_0 = 176f;
    var_0 = _wgslsmith_f_op_f32(170f + _wgslsmith_f_op_f32(-137f * global0[_wgslsmith_index_u32(~arg_1, 30u)]));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.e.x), 30u)]))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c >> (_wgslsmith_add_u32(15778u, 0u) % 32u), 30u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f), global0[_wgslsmith_index_u32(7926u, 30u)]))));
    global1 = select(select(select(vec2<bool>(global1.x && true, -1i <= u_input.a.x), vec2<bool>(true, global1.x), true), !(!vec2<bool>(global1.x, true)), true), vec2<bool>(any(!select(vec4<bool>(false, true, false, global1.x), vec4<bool>(true, global1.x, true, global1.x), global1.x)), !all(vec4<bool>(global1.x, false, global1.x, true))), select(select(vec2<bool>(!global1.x, any(vec2<bool>(global1.x, global1.x))), !vec2<bool>(global1.x, global1.x), true), !vec2<bool>(global1.x, global1.x), select(global1.x, global1.x, global1.x)));
    return _wgslsmith_f_op_f32(step(-760f, -1642f)) < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 25671u), 30u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(382f)))), -740f));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = 9379i;
    global1 = select(select(!(!select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), global1.x)), vec2<bool>(!global1.x, all(vec3<bool>(global1.x, true, false))), !(!(!vec2<bool>(false, global1.x)))), vec2<bool>(true, !global1.x), !select(vec2<bool>(true, func_3(u_input.d, 51469u)), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(true, true), global1.x)), global1.x));
    return reverseBits(~u_input.d.x) >= (u_input.c & u_input.e.x);
}

fn func_1() -> StorageBuffer {
    global1 = select(select(!vec2<bool>(select(true, true, false), true), select(select(vec2<bool>(true, true), select(vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), vec2<bool>(global1.x, true)), vec2<bool>(global1.x, true)), !(!vec2<bool>(global1.x, global1.x)), global1.x), false), vec2<bool>(true, !all(vec4<bool>(true, global1.x, global1.x, true))), any(vec4<bool>(all(vec2<bool>(global1.x, global1.x)) & true, true, 4294967295u != _wgslsmith_mult_u32(u_input.c, u_input.e.x), global1.x)));
    let var_0 = any(vec3<bool>(!func_2(vec4<f32>(-757f, global0[_wgslsmith_index_u32(1u, 30u)], -571f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), global1.x, (_wgslsmith_f_op_f32(f32(-1f) * -614f) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 30u)])) | false));
    global1 = !select(select(select(!vec2<bool>(var_0, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.x), global1.x), !vec2<bool>(var_0, true), true), select(!(!vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), select(vec2<bool>(true, global1.x), vec2<bool>(false, false), var_0))), select(vec2<bool>(true, global1.x), select(!vec2<bool>(global1.x, true), !vec2<bool>(global1.x, true), vec2<bool>(false, false)), var_0));
    let var_1 = max(firstLeadingBit(0u), 46914u);
    var var_2 = u_input.b;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), 63506u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_0 = 2078u;
    var var_1 = _wgslsmith_div_u32(~firstLeadingBit(select(1u, 1u, global1.x & false)), ~u_input.e.x);
    var_0 = ~u_input.e.x;
    var_1 = u_input.e.x;
    let x = u_input.a;
    s_output = func_1();
}

