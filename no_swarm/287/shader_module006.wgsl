struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<f32>, 31>;

var<private> global2: array<u32, 12> = array<u32, 12>(26088u, 63763u, 8408u, 71516u, 1u, 1u, 4294967295u, 11581u, 4294967295u, 31699u, 11686u, 62660u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(arg_0, 12u)];
    let var_1 = Struct_1(min(reverseBits(~(-vec3<i32>(-16103i, -27424i, 1i))), firstTrailingBit((vec3<i32>(arg_1.x, -2147483647i, arg_1.x) ^ vec3<i32>(arg_1.x, -24495i, -17491i)) & -vec3<i32>(u_input.b, 26190i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1635f)) * 1f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), firstTrailingBit(_wgslsmith_sub_u32(min(min(arg_0, arg_0), 1u), 4294967295u)), (vec4<i32>(1i, 2147483647i, -u_input.c.x, u_input.c.x) | min(-vec4<i32>(-2147483647i, arg_1.x, 0i, arg_1.x), firstTrailingBit(vec4<i32>(0i, 0i, u_input.c.x, -10771i)))) << (min(~u_input.a, abs(~u_input.d)) % vec4<u32>(32u)), true);
    let var_2 = !vec3<bool>(var_1.b, var_1.e, var_1.b);
    global1 = array<vec3<f32>, 31>();
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-589f * global0.x) * _wgslsmith_f_op_f32(abs(global0.x))), firstTrailingBit(u_input.c));
    return 27184u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = ~(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, global2[_wgslsmith_index_u32(63465u, 12u)], 1u), vec4<u32>(arg_0.x, 43509u, 0u, 4294967295u)), vec4<u32>(~4294967295u, 26145u, func_3(0u, u_input.c, arg_1.x), u_input.a.x)) | u_input.a);
    var var_1 = !vec4<bool>(all(vec2<bool>(arg_1.x, false)) | (arg_1.x && true), 93665u <= ~(arg_0.x & 4294967295u), true, true);
    var var_2 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, _wgslsmith_mod_u32(1u, var_0.x >> (global2[_wgslsmith_index_u32(4294967295u, 12u)] % 32u)), ~reverseBits(0u)), arg_0.wzy));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(267f, global0.x), _wgslsmith_f_op_f32(-global0.x))) * global0.x));
    var_1 = !(!select(select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(var_1.x, true, arg_1.x, arg_1.x), vec4<bool>(var_1.x, true, arg_1.x, arg_1.x)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, !var_1.x, true, arg_1.x), var_1.x));
    return _wgslsmith_f_op_f32(min(arg_2, -627f));
}

fn func_1() -> StorageBuffer {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(29660u, _wgslsmith_sub_u32(41771u, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(11026u, 12u)], global2[_wgslsmith_index_u32(55356u, 12u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), ~u_input.d), 12u)])), 31u)];
    let var_0 = vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-808f, global0.x)) + _wgslsmith_f_op_f32(abs(-204f))), true))), global0.x, 1355f, 357f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(global0.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -155f)) + _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = Struct_3(var_0.x, max(u_input.c, select(~vec2<i32>(0i, u_input.c.x), ~vec2<i32>(-2147483647i, -11160i), true)) & u_input.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(406f, _wgslsmith_f_op_f32(exp2(var_2.a))) + _wgslsmith_div_f32(1770f, var_2.a));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(962u, 12u)], 0u, global2[_wgslsmith_index_u32(3021u, 12u)])), select(vec2<bool>(false, true), vec2<bool>(true, false), false), -716f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs((u_input.a.wy >> (u_input.d.xx % vec2<u32>(32u))) | u_input.a.xx));
    let var_1 = _wgslsmith_f_op_f32(trunc(global0.x));
    let x = u_input.a;
    s_output = func_1();
}

