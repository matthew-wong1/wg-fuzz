struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global2: vec2<u32> = vec2<u32>(21521u, 14990u);

var<private> global3: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 22118u), vec2<u32>(118331u, 1u), vec2<u32>(2224u, 65144u), vec2<u32>(4294967295u, 0u), vec2<u32>(83881u, 19834u), vec2<u32>(9585u, 58793u), vec2<u32>(41523u, 48436u), vec2<u32>(4294967295u, 1u), vec2<u32>(11696u, 55479u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(8339u, 0u), vec2<u32>(0u, 0u), vec2<u32>(78586u, 16458u), vec2<u32>(9318u, 56540u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 16512u), vec2<u32>(16685u, 117805u), vec2<u32>(83192u, 52351u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38974u, 1u), vec2<u32>(126755u, 1u), vec2<u32>(51735u, 0u), vec2<u32>(0u, 4970u), vec2<u32>(3886u, 0u), vec2<u32>(20067u, 59015u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 36585u), vec2<u32>(4294967295u, 0u));

var<private> global4: Struct_1 = Struct_1(vec2<f32>(1246f, -1081f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = all(!global1[_wgslsmith_index_u32(u_input.a, 6u)]);
    let var_1 = Struct_1(global4.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-668f, -728f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.a * global4.a)))));
    global3 = array<vec2<u32>, 32>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 406f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.x, -1454f)))))));
    return ~(global2.x | 1u);
}

fn func_1() -> vec2<u32> {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a));
    global2 = vec2<u32>(~u_input.a, 23976u);
    return vec2<u32>(u_input.b, func_2(!any(vec3<bool>(false, global0[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(global2.x, 31u)]))));
}

fn func_3() -> vec2<u32> {
    global0 = array<bool, 31>();
    return ~(~(~abs(vec2<u32>(80546u, 70181u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~min(global2.x, 14118u), ~global2.x), _wgslsmith_div_vec2_u32(vec2<u32>(abs(u_input.a), ~39443u), global3[_wgslsmith_index_u32(~(~22089u), 32u)])) << (~global3[_wgslsmith_index_u32(~60361u, 32u)] % vec2<u32>(32u));
    global0 = array<bool, 31>();
    var var_1 = (func_1() ^ ~func_3()) ^ vec2<u32>(firstTrailingBit(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, var_0.x, 18833u), vec3<u32>(u_input.a, 4294967295u, global2.x)), firstTrailingBit(u_input.a), global0[_wgslsmith_index_u32(~3124u, 31u)])), ~u_input.a);
    global3 = array<vec2<u32>, 32>();
    var_1 = ~global3[_wgslsmith_index_u32(~(u_input.b >> (func_2(global0[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(var_1.x, 31u)]), 31u)]) % 32u)), 32u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.a, _wgslsmith_div_vec2_f32(global4.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.a.x, global4.a.x), global4.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec4_u32(vec4<u32>(~var_1.x, 4294967295u, var_1.x & global2.x, _wgslsmith_mult_u32(15221u, 12589u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, 50436u, var_0.x, 6076u)), select(vec4<u32>(var_0.x, 119114u, var_1.x, 0u), vec4<u32>(var_1.x, 1u, var_0.x, 0u), vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(global2.x, 31u)])))), ~vec4<u32>(_wgslsmith_add_u32(49292u, var_0.x), ~108301u, abs(29495u), var_0.x), any(select(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 31u)], true), !vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 31u)]), all(global1[_wgslsmith_index_u32(0u, 6u)])))), select(~countOneBits(~1u), 1u, true));
}

