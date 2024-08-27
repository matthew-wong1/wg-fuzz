struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = ~vec3<i32>(~arg_1, i32(-1i) * -1i, firstLeadingBit(firstTrailingBit(~u_input.d.x)));
    var_0 = vec3<i32>(0i, -1i, var_0.x) | u_input.b.wyx;
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c.x | (u_input.a.x & abs(u_input.a.x)), 4294967295u, countOneBits(u_input.c.x), reverseBits(4294967295u)));
    global0 = array<vec4<bool>, 3>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(108f)))) + _wgslsmith_f_op_f32(round(111f)));
    return arg_0.a;
}

fn func_2() -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_3(true), -19056i), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true | !func_3(Struct_3(true), u_input.b.x)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), 0i < u_input.d.x), vec3<bool>(true, true, any(vec3<bool>(true, false, false)))));
    global0 = array<vec4<bool>, 3>();
    var var_1 = ~(-_wgslsmith_div_vec3_i32(max(~u_input.b.zzy, ~vec3<i32>(2147483647i, u_input.b.x, -1i)), u_input.b.yyx));
    return 12578u;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(vec3<u32>(abs(3038u >> (u_input.a.x % 32u)), ~reverseBits(1u) ^ min(~6099u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.a.x, arg_0.a.x), u_input.a)), ~_wgslsmith_mult_u32(arg_0.a.x, u_input.a.x | 30871u)));
    let var_1 = Struct_1(select(~u_input.c.x, min(arg_0.a.x, var_0.a.x) << (_wgslsmith_add_u32(u_input.c.x, u_input.a.x) % 32u), true) ^ _wgslsmith_div_u32(4294967295u, ~1u));
    var var_2 = Struct_1(~var_1.a);
    var var_3 = false;
    var var_4 = 1089f;
    return Struct_2(max(vec2<u32>(select(32591u, var_2.a, true), var_1.a) ^ select(min(vec2<u32>(var_2.a, var_2.a), arg_0.a.yx), vec2<u32>(var_0.a.x, arg_0.a.x), any(global0[_wgslsmith_index_u32(var_1.a, 3u)])), vec2<u32>(var_1.a, reverseBits(arg_0.a.x))));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(~vec2<u32>(~u_input.c.x, ~1u) ^ u_input.a.xy);
    var_0 = func_4(Struct_4(vec3<u32>(~firstTrailingBit(19648u), _wgslsmith_mod_u32(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(18833u, 32293u, 18120u), vec3<u32>(4294967295u, 4294967295u, var_0.a.x))), _wgslsmith_add_u32(16717u, ~4294967295u))));
    let var_1 = func_4(Struct_4(u_input.a.zxx));
    var_0 = func_4(Struct_4(~vec3<u32>(~var_0.a.x, min(var_0.a.x, var_0.a.x), 1u)));
    var var_2 = Struct_4(u_input.c);
    return Struct_1(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_add_u32(4294967295u ^ var_1.a.x, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    var var_0 = func_1(-546f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f * -1000f)) - _wgslsmith_f_op_f32(abs(-518f))))));
    var var_1 = Struct_4(select(u_input.a.yyy, u_input.c, any(vec2<bool>(true, false))));
    global0 = array<vec4<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xxx, _wgslsmith_dot_vec2_i32(~u_input.d, -vec2<i32>(u_input.d.x | u_input.b.x, _wgslsmith_div_i32(u_input.b.x, 2189i))));
}

