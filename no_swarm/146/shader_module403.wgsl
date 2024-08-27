struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~reverseBits(~global1.c.x), ~(~firstTrailingBit(51464u)), ~u_input.d.x, 0u), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.c.x, 1u, 19625u, arg_0)), vec4<u32>(25484u, ~arg_0, _wgslsmith_clamp_u32(u_input.c, u_input.c, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(55817u, arg_0, global1.c.x), vec3<u32>(1u, global1.c.x, 11903u)))));
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_u32(~global1.c, var_1.xxx & _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x, 11796u, arg_0), ~global1.c)));
    var var_3 = arg_2;
    let var_4 = var_2.x;
    return !(!arg_3.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    global1 = arg_0;
    let var_0 = func_3(global1.c.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(946f + -1682f) + _wgslsmith_f_op_f32(345f - -1596f)) + -1314f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, 1000f, -1392f, -481f)), vec4<f32>(437f, 2850f, 1284f, 1122f))))), global2[_wgslsmith_index_u32(((~global1.c.x ^ abs(4420u)) ^ 18496u) & firstTrailingBit(global1.c.x), 25u)], global1.b);
    global0 = select(vec2<bool>(all(!(!vec3<bool>(true, global0.x, global1.b.x))), true), arg_1.xy, true);
    var var_1 = arg_0.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2124f, 463f)) + _wgslsmith_f_op_f32(f32(-1f) * -956f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1119f)), 469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(686f)) * _wgslsmith_f_op_f32(-1204f - -882f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f - 1202f))) * vec4<f32>(1f, 1f, 1f, 1f)));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = true;
    let var_1 = -849f;
    global0 = !arg_3;
    return func_2(global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~max(global1.c.x, 28972u), abs(_wgslsmith_mod_u32(0u, u_input.c))), ~(u_input.d.x | firstTrailingBit(u_input.a))), 25u)], vec3<bool>(all(global1.b.yzw), true, all(select(select(global1.b.yzz, global1.a, global0.x), select(vec3<bool>(true, global1.a.x, true), global1.a, arg_2.x), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(!(!func_1(2147483647i, true, global1.a.xz, global1.b.yz)), vec3<bool>(global1.b.x, !(global1.d != global1.d), true), global0.x), select(global1.b, !global1.b, global1.b.x), vec3<u32>(~(~0u), 60463u, 0u), _wgslsmith_dot_vec2_i32(~vec2<i32>(~(-31179i), -40589i), min(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-68526i, u_input.b), vec2<i32>(28588i, u_input.b), vec2<i32>(1i, u_input.b)), vec2<i32>(global1.d, -2147483647i), global1.a.yy), vec2<i32>(u_input.b, select(-2147483647i, global1.d, false)))));
    let var_0 = vec2<u32>(u_input.d.x, ~(~28428u));
    global0 = vec2<bool>(global0.x, true);
    global1 = global2[_wgslsmith_index_u32((~u_input.d.x >> (u_input.d.x % 32u)) & select(var_0.x, global1.c.x, !(~var_0.x < 1u)), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

