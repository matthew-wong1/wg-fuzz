struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: f32 = -709f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.zyz);
    let var_1 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mult_u32(min(u_input.d.x, 39510u), 18185u), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2000f), _wgslsmith_div_f32(arg_0.x, var_0.x), _wgslsmith_div_f32(var_0.x, -310f), _wgslsmith_f_op_f32(floor(-148f))))) - arg_0));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(699f))) + _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-318f)), _wgslsmith_div_f32(var_1.b.x, var_1.b.x)))));
    global0 = array<vec2<f32>, 2>();
    global0 = array<vec2<f32>, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(427f))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~37256u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1665f);
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2413f)))))));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(660f, -1183f, 716f, 1253f), vec4<f32>(-705f, -232f, -218f, 669f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, -1657f, 1059f, -1000f) * vec4<f32>(-165f, 137f, -606f, -1908f))) - vec4<f32>(_wgslsmith_f_op_f32(select(-122f, -452f, true)), -1392f, _wgslsmith_f_op_f32(max(2068f, -465f)), 1f))))));
    global1 = 2048f;
    return Struct_1(~29659u);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global0 = array<vec2<f32>, 2>();
    global0 = array<vec2<f32>, 2>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_0 = arg_1 | 37976i;
    var_0 = 2147483647i;
    return Struct_2(firstLeadingBit(u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1235f, -533f, 195f, -168f) - vec4<f32>(-1128f, 1000f, 947f, -1560f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(445f, 1227f, -1466f, 1000f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 2>();
    let var_0 = func_2();
    global1 = -1903f;
    let var_1 = func_2();
    let var_2 = u_input.a;
    return Struct_1(~1u);
}

fn func_1() -> Struct_2 {
    global1 = -350f;
    global1 = 1327f;
    global1 = -303f;
    global0 = array<vec2<f32>, 2>();
    let var_0 = func_5(func_4(func_2(), u_input.a), Struct_2(select(firstTrailingBit(vec3<u32>(u_input.d.x, 1u, 51182u) & u_input.d), ~(~u_input.d), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, -423f, -861f, -1803f)))))), u_input.c.x, 913f);
    return Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a, 1u, var_0.a) ^ u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(), u_input.a).b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2201f, 475f, 572f, -1779f) - vec4<f32>(1653f, 1527f, -1000f, -1085f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.c, u_input.c);
    global0 = array<vec2<f32>, 2>();
    var var_1 = true;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(125f)), var_2.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(410f)))) - var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, 1u, 53033u, _wgslsmith_mod_u32(var_0.x, var_2.a.x) >> (~20389u % 32u)) >> (vec4<u32>(~1u, 96386u, ~(~var_2.a.x), func_1().a.x) % vec4<u32>(32u)));
}

