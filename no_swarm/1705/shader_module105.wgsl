struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(0i, 1i, -1i, 1i, i32(-2147483648), -1i, -8585i, -33998i, 38964i, 52698i, 1i, -1i, -1i, 863i, 16903i, 0i, 32649i, 2147483647i, 25742i, 2147483647i);

var<private> global1: Struct_1;

var<private> global2: array<u32, 27> = array<u32, 27>(9829u, 0u, 0u, 4294967295u, 1u, 13388u, 15262u, 1u, 1u, 0u, 17316u, 1u, 4294967295u, 0u, 1u, 0u, 0u, 26879u, 4294967295u, 0u, 11354u, 4294967295u, 1u, 6338u, 1u, 0u, 6691u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), -253f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.x, 434f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, global1.c.x, _wgslsmith_f_op_f32(global1.c.x - global1.c.x), _wgslsmith_f_op_f32(-global1.c.x)))), global1.a);
    let var_1 = true;
    var var_2 = -532f;
    let var_3 = abs(reverseBits(1u)) != _wgslsmith_add_u32(~(_wgslsmith_dot_vec3_u32(u_input.b, u_input.e.wwx) << (abs(global2[_wgslsmith_index_u32(1u, 27u)]) % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~(~1u)), 27u)]);
    var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-424f + 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, 1271f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(min(1500f, -1838f)), var_0.c.x, global1.c.x))), global1.c, any(!vec3<bool>(true, false, var_3)))), var_0.d);
    return !var_1;
}

fn func_2() -> Struct_1 {
    global2 = array<u32, 27>();
    return Struct_1(func_3() || global1.b, all(vec3<bool>(global1.a, true, global1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, _wgslsmith_f_op_f32(floor(-613f)), global1.c.x, 1676f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) + global1.c.x))), !(!global1.a));
}

fn func_1() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(43121u, 27u)];
    var var_1 = func_2();
    var var_2 = ~_wgslsmith_add_u32(76635u, ~select(u_input.d.x, abs(u_input.b.x), true));
    let var_3 = select(vec3<bool>(true, global1.a, true), vec3<bool>((1u != _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(75402u, 27u)], 4294967295u)) || var_1.a, true, !all(vec3<bool>(true, true, false))), func_3());
    let var_4 = vec2<bool>(true, !global1.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_2();
    var var_1 = Struct_1(all(!vec3<bool>(select(true, var_0.b, false), var_0.d, func_2().d)), false, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * global1.c.x)) + -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.c.x)))))), var_0.c.x), !(!any(vec4<bool>(global1.b, var_0.d, var_0.d, false))) | false);
    var var_2 = vec2<u32>(~(78272u ^ (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 27u)] | u_input.d.x)) & 8117u, global2[_wgslsmith_index_u32(~(~countOneBits(0u)), 27u)] | 61520u);
    let var_3 = func_2();
    let var_4 = func_1();
    var var_5 = func_1();
    let var_6 = _wgslsmith_div_i32(~0i, ~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(20346u, u_input.d.x) ^ vec2<u32>(u_input.b.x, 0u), u_input.d)));
}

