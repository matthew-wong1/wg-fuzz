struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<u32, 2>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec3<bool> {
    global2 = vec2<u32>(u_input.c, abs(43027u));
    let var_0 = Struct_1(false, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -185f));
    global1 = array<u32, 2>();
    var var_1 = 25810i;
    let var_2 = vec3<u32>(1u, 4294967295u, _wgslsmith_add_u32(~(~4294967295u), u_input.a));
    return select(!arg_2.xzz, arg_2.wzz, true);
}

fn func_3() -> bool {
    global1 = array<u32, 2>();
    let var_0 = Struct_1(true, firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(969f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1720f * 460f) + -960f) * 1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c)), var_0.c, -526f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, var_0.c, var_0.c, -1557f)))) - vec4<f32>(_wgslsmith_f_op_f32(-655f * var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c, _wgslsmith_f_op_f32(trunc(var_0.c))))));
    global2 = vec2<u32>(u_input.c, 4294967295u);
    let var_2 = var_0;
    return !all(!(!vec4<bool>(var_0.a, true, global0[_wgslsmith_index_u32(4294967295u, 28u)], true)));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(-u_input.b.wyz, ~(~(~countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global2.x, 27630u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(299f, 1229f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, -285f)))))), Struct_1(all(select(!vec3<bool>(global0[_wgslsmith_index_u32(42649u, 28u)], false, global0[_wgslsmith_index_u32(2472u, 28u)]), func_2(Struct_2(vec3<i32>(-2147483647i, 1i, 941i), vec3<u32>(71997u, u_input.a, global2.x), vec2<f32>(2201f, 1170f), Struct_1(false, u_input.d, -315f)), vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 28u)])), func_3())), _wgslsmith_div_i32(countOneBits(select(u_input.b.x, u_input.b.x, false)), -1i), _wgslsmith_f_op_f32(sign(-196f))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.c.x);
    let var_3 = ~abs(_wgslsmith_div_u32(var_0.b.x, global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(u_input.a, 2u)], 0u, var_0.d.a), 2u)]) & (~4294967295u >> ((1u ^ global1[_wgslsmith_index_u32(u_input.c, 2u)]) % 32u)));
    global1 = array<u32, 2>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) - _wgslsmith_f_op_f32(-1063f + var_0.d.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 2>();
    var var_0 = vec4<bool>(true, !any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(global2.x, 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global2.x, 28u)])), !vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 2u)], 28u)], true), false)), global0[_wgslsmith_index_u32(u_input.c, 28u)], firstLeadingBit(~(-u_input.d)) < ~(-u_input.b.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2096f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 527f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(-332f * -491f)))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(1660f, -(~(-u_input.d)) & ~u_input.d, var_1.x, vec4<u32>(min(firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12457u), vec2<u32>(1u, 1u))), abs(firstLeadingBit(global2.x)), u_input.c, 1u) | ~(~(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], 0u, global2.x, global1[_wgslsmith_index_u32(25247u, 2u)]))));
}

