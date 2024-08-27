struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = array<f32, 27>();
    global1 = (vec2<u32>(1u, select(_wgslsmith_mult_u32(84501u, arg_1), u_input.a, arg_0.x)) ^ arg_2) & ~(~min(~vec2<u32>(4294967295u, u_input.a), ~arg_2));
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(25146u, 27u)], 689f, -674f, global0[_wgslsmith_index_u32(u_input.a, 27u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(50386u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]) * vec4<f32>(-175f, global0[_wgslsmith_index_u32(global1.x, 27u)], 208f, -1977f)))))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(arg_1, ~(~_wgslsmith_div_u32(0u, arg_1))), _wgslsmith_dot_vec4_i32(vec4<i32>(17392i, -14769i, -39870i, -18084i), -countOneBits(u_input.d)), arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-747f * var_0.x)), -2000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-2046f, 665f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~7016u, reverseBits(arg_1), reverseBits(98242u)), 27u)])), -359f));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.a, 27u)], -638f)))), var_1.d.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(max(firstLeadingBit(var_1.a), 4294967295u), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 27u)]) + _wgslsmith_f_op_f32(min(-202f, var_1.d.x))))), _wgslsmith_f_op_f32(exp2(var_1.d.x)));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~4294967295u, 27u)]))), 392f), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, -722f, -1505f, var_0.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 893f, 1000f, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 27u)], -620f, var_0.x, global0[_wgslsmith_index_u32(global1.x, 27u)])))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -2704f, global0[_wgslsmith_index_u32(1u, 27u)], -1000f)))), select(true, true, any(vec2<bool>(true, true))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1093f), var_0.x, 386f, 1512f) - _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, true, true), 1u, reverseBits(vec2<u32>(u_input.a, 9902u)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 1155f), _wgslsmith_f_op_f32(trunc(2345f)), _wgslsmith_f_op_f32(f32(-1f) * -1143f), 243f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), 21258u << (global1.x % 32u), min(vec2<u32>(global1.x, global1.x), vec2<u32>(12019u, 24950u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 336f, -1000f, -940f))))));
    var var_2 = Struct_1(~u_input.a, 7572i, select(vec4<bool>(all(vec4<bool>(true, false, true, false)) | true, true, false, false), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), false), true), var_1);
    let var_3 = var_2.c.x;
    var var_4 = Struct_1(1u, var_2.b, vec4<bool>(false, select(false & !var_2.c.x, true, all(var_2.c.zw)), !(_wgslsmith_add_u32(u_input.a, 1u) < (4294967295u >> (1u % 32u))), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(-124f - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -662f))), var_2.d.x)));
    return !var_2.c;
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = all(!(!(!func_2())));
    var_0 = !all(vec4<bool>(true, false, true, true));
    var var_1 = false;
    var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(14342u, u_input.a), 27u)];
    return StorageBuffer(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~((global1.x & u_input.a) | ~4294967295u)));
    global0 = array<f32, 27>();
    global1 = ~countOneBits(reverseBits(vec2<u32>(0u, _wgslsmith_clamp_u32(32273u, u_input.a, 55849u))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    let x = u_input.a;
    s_output = func_1(reverseBits(min(vec2<u32>(~u_input.a, 63545u), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(55283u, 0u), vec2<u32>(global1.x, 1u))))));
}

