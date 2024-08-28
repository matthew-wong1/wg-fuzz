struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec3<f32>(1000f, -579f, 125f)), Struct_4(vec3<f32>(-409f, -637f, -190f)), Struct_4(vec3<f32>(163f, 1133f, 1541f)), Struct_4(vec3<f32>(1367f, 417f, -425f)), Struct_4(vec3<f32>(1000f, 315f, 736f)), Struct_4(vec3<f32>(285f, -186f, 769f)), Struct_4(vec3<f32>(-392f, -1655f, -927f)), Struct_4(vec3<f32>(738f, -517f, 2103f)), Struct_4(vec3<f32>(-2587f, -2239f, -644f)), Struct_4(vec3<f32>(-273f, 971f, -1115f)));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(1u, 116553u, vec3<u32>(1u, 1u, 1u), true, vec4<bool>(true, true, true, true)), vec3<bool>(false, true, false), -317f), Struct_2(Struct_1(4294967295u, 1u, vec3<u32>(1u, 17111u, 0u), true, vec4<bool>(false, false, true, false)), vec3<bool>(false, false, false), 2234f), Struct_2(Struct_1(1u, 51625u, vec3<u32>(4294967295u, 1u, 4294967295u), true, vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true), 504f), Struct_2(Struct_1(30016u, 38637u, vec3<u32>(12253u, 0u, 22742u), false, vec4<bool>(true, true, true, false)), vec3<bool>(false, false, false), -180f), Struct_2(Struct_1(4294967295u, 18433u, vec3<u32>(4294967295u, 1u, 0u), true, vec4<bool>(false, true, true, false)), vec3<bool>(true, true, true), -780f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    let var_1 = select(~u_input.a.x, 5182u, false);
    return !(!all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global2 = array<Struct_2, 5>();
    let var_0 = arg_0.x;
    let var_1 = max(~_wgslsmith_mod_u32(select(u_input.a.x, 4294967295u, arg_1), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(19421u, 1u, u_input.a.x))), 2301u) | 5480u;
    global1 = array<Struct_4, 10>();
    global0 = all(vec3<bool>(arg_1, true, false));
    return Struct_1(~67032u, ~1u, ~(vec3<u32>(~u_input.a.x, var_1, u_input.a.x & u_input.a.x) | (~vec3<u32>(27017u, 4294967295u, u_input.a.x) >> (~u_input.a % vec3<u32>(32u)))), func_3(), vec4<bool>(any(vec2<bool>(false, true | arg_1)), func_3(), !((1u <= u_input.a.x) | any(vec2<bool>(arg_1, true))), true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<f32>) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, arg_2.x, -369f, arg_0.a.c))))), _wgslsmith_f_op_f32(f32(-1f) * -241f) == _wgslsmith_f_op_f32(-arg_0.a.c));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1042f);
    global1 = array<Struct_4, 10>();
    let var_2 = arg_0.a.a;
    global1 = array<Struct_4, 10>();
    return _wgslsmith_f_op_f32(ceil(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(true, true, true));
    global1 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1437f, -244f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1369f - _wgslsmith_f_op_f32(func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false), global1[_wgslsmith_index_u32(u_input.a.x, 10u)], vec3<f32>(1243f, 172f, 102f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 0u), true, vec4<bool>(false, false, true, false)), vec3<bool>(true, false, true), 1675f), false), Struct_4(vec3<f32>(1056f, 589f, 488f)), vec3<f32>(1362f, -234f, 996f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-462f, 1891f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_1.x)), min(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, 30447u, 88782u)), ~u_input.a), ~vec3<u32>(firstTrailingBit(1u), 1u, _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(74u, u_input.a.x)))), 519f, var_1.x, _wgslsmith_f_op_f32(-268f * _wgslsmith_f_op_f32(-var_1.x)));
}

