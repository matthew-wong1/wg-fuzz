struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<vec4<bool>, 12>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.wz;
    var var_1 = !(!global1[_wgslsmith_index_u32(1u, 12u)]);
    global1 = array<vec4<bool>, 12>();
    var var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-524f * arg_0.c.x) - -439f);
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 10>();
    global1 = array<vec4<bool>, 12>();
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    global1 = array<vec4<bool>, 12>();
    return 1i;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, reverseBits(u_input.d) << (u_input.b.x % 32u), firstLeadingBit(u_input.d)));
    let var_1 = func_1(Struct_1(arg_2.xx, firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 10520u), ~0u, ~45170u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c))));
    var var_2 = vec2<u32>(49629u, 4544u);
    var var_3 = arg_2;
    var_3 = vec3<bool>(var_1.a.x, firstTrailingBit(_wgslsmith_clamp_i32(func_2(Struct_1(vec2<bool>(var_1.a.x, var_3.x), vec4<u32>(23239u, 4294967295u, 14410u, u_input.b.x), var_1.c)), var_0, u_input.a.x)) > var_0, (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, var_0, u_input.c.x), max(u_input.c, u_input.c)) <= 1i) && any(vec4<bool>(all(arg_2), arg_2.x, var_1.b.x != u_input.b.x, true)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    let var_0 = reverseBits(-(func_2(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)])) << (_wgslsmith_mod_u32(u_input.b.x ^ 19913u, ~u_input.b.x) % 32u)));
    var var_1 = reverseBits(~firstTrailingBit(u_input.c)) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1873i, 2147483647i, var_0, u_input.d), vec4<i32>(60159i, ~(-2147483647i), firstLeadingBit(-35904i), func_3(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], false, vec3<bool>(true, true, false))), select(vec4<i32>(u_input.c.x, var_0, u_input.c.x, 6751i), -u_input.c, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))));
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(u_input.b.x, 22599u, u_input.b.x, u_input.b.x))), vec4<u32>(u_input.b.x, u_input.b.x, ~abs(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, firstTrailingBit(0u)))), vec4<i32>(-1i) * -u_input.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1219f, 611f, -1146f, 684f) - vec4<f32>(1125f, -195f, -1227f, -978f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(global0[_wgslsmith_index_u32(49896u, 10u)]).c.x, 1f, func_1(global0[_wgslsmith_index_u32(0u, 10u)]).c.x, _wgslsmith_f_op_f32(-229f - -475f))))), vec2<i32>(-14118i, 1i));
}

