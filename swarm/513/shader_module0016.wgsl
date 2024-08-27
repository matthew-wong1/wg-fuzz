struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_2(Struct_1(3037u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(abs(-2174f))))), ~_wgslsmith_add_vec2_u32(vec2<u32>(26986u, 3750u), vec2<u32>(u_input.a, u_input.a)) & ~(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, 23388u)), ~4294967295u ^ _wgslsmith_add_u32(max(u_input.a, 4294967295u), _wgslsmith_div_u32(u_input.a, u_input.a))));
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_2(var_0.a);
    let var_2 = vec2<bool>(true, all(vec2<bool>(select(all(vec3<bool>(false, true, true)), true, true), any(vec4<bool>(true, true, true, true)))));
    return select(select(select(select(vec3<bool>(true, var_2.x, true), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, false), vec3<bool>(true, var_2.x, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_2.x), false), select(vec3<bool>(true, true, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(true, true, var_2.x)), u_input.a == 4294967295u), !any(vec4<bool>(true, var_2.x, false, var_2.x))), !vec3<bool>(!var_2.x, any(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), var_2.x), true), vec3<bool>(var_2.x, true, !any(!vec4<bool>(true, var_2.x, var_2.x, false))), false);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(arg_2.a.d, 14u)], false))))))));
    var var_1 = ~(-(~firstLeadingBit(-2147483647i)) >> (~arg_2.a.a % 32u));
    var var_2 = !func_3();
    var_2 = vec3<bool>(!((all(vec4<bool>(false, var_2.x, true, var_2.x)) != false) || all(!vec3<bool>(true, var_2.x, true))), false, var_2.x);
    var var_3 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1288f);
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_2(Struct_1(~select(~83134u, 4294967295u, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2297f - -1059f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.a, -628f, vec2<u32>(u_input.a, u_input.a), u_input.a)), vec3<u32>(94236u, u_input.a, 4294967295u), Struct_2(Struct_1(u_input.a, 554f, vec2<u32>(89399u, 1u), 12507u)))), _wgslsmith_f_op_f32(sign(-319f))))), abs(countOneBits(~vec2<u32>(71159u, u_input.a))), reverseBits(_wgslsmith_add_u32(~u_input.a, 38736u))));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_1 = (~(~vec3<u32>(0u, 32871u, u_input.a)) & vec3<u32>(min(var_0.a.c.x, 37115u), ~(0u & var_0.a.c.x), _wgslsmith_clamp_u32(select(122207u, 83468u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, var_0.a.d, 55486u, var_0.a.a), vec4<u32>(var_0.a.c.x, 3971u, var_0.a.a, var_0.a.c.x)), countOneBits(u_input.a)))) << (max(countOneBits(vec3<u32>(reverseBits(4294967295u), ~u_input.a, var_0.a.a)), ~min(abs(vec3<u32>(33341u, 42153u, var_0.a.d)), firstLeadingBit(vec3<u32>(1u, u_input.a, var_0.a.d)))) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_add_u32(var_0.a.a ^ (~u_input.a << (countOneBits(29278u) % 32u)), _wgslsmith_div_u32(16449u, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-593f)) * _wgslsmith_f_op_f32(f32(-1f) * -1213f)) + -1000f), ~(vec2<u32>(var_0.a.a, max(var_0.a.a, var_1.x)) ^ ~vec2<u32>(37005u, 63190u)), u_input.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1((reverseBits(select(u_input.a, arg_2.a.a, true)) >> (~(~arg_3.a.a) % 32u)) | arg_3.a.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1.b, arg_3.a.b, false)), _wgslsmith_div_f32(arg_2.a.b, -1522f))), 502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(206f))))))), arg_3.a.c, arg_0.x);
    let var_1 = arg_2.a;
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(exp2(var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1036f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~vec3<u32>(u_input.a, u_input.a, 4294967295u), func_1(), Struct_2(Struct_1(u_input.a, 339f, vec2<u32>(u_input.a, u_input.a), u_input.a)), Struct_2(Struct_1(u_input.a, 690f, vec2<u32>(4294967295u, u_input.a), 4294967295u)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-430f, 1000f, false)), -465f))));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.a, 14u)] + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, -1089f, -849f, 1000f)))), global0[_wgslsmith_index_u32(~0u, 14u)]))), ~9290u, select(abs(~firstTrailingBit(47307u)), abs(firstLeadingBit(23263u)) << (u_input.a % 32u), _wgslsmith_f_op_f32(-var_0) <= var_0), abs(abs(vec3<i32>(0i, -2147483647i, 1i))) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a >> (4294967295u % 32u), u_input.a), vec3<u32>(countOneBits(64582u), min(4294967295u, u_input.a), ~1u)) % vec3<u32>(32u)), vec3<u32>(abs(1u), 4294967295u, u_input.a));
}

