struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 4294967295u));

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<u32, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(floor(arg_2));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a);
    global1 = array<Struct_1, 10>();
    let var_0 = ~(~global0.a.xx);
    global2 = array<u32, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1409f * 845f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f + -1126f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(-1016f, 539f))), _wgslsmith_f_op_f32(min(332f, _wgslsmith_f_op_f32(408f * 2526f))), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.e), vec4<bool>(false, false, false, false), -883f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(791f - -198f) * -1377f)))));
    return Struct_1(vec3<u32>(951u, _wgslsmith_add_u32(var_0.x, (global0.a.x >> (1u % 32u)) >> (4294967295u % 32u)), 59346u));
}

fn func_1() -> u32 {
    let var_0 = u_input.e.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~global2[_wgslsmith_index_u32(global0.a.x, 18u)]), var_0 | _wgslsmith_mult_u32(~global0.a.x, 1u)), u_input.a.x), 10u)];
    var var_2 = func_2();
    var var_3 = u_input.b.x;
    let var_4 = 2147483647i;
    return ~(~reverseBits(~_wgslsmith_dot_vec2_u32(var_2.a.yz, u_input.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x | 4294967295u, ~u_input.a.x, global0.a.x), vec3<u32>(min(u_input.a.x, global2[_wgslsmith_index_u32(global0.a.x, 18u)]), ~global0.a.x, abs(u_input.d.x))) ^ (vec3<u32>(~73506u, 0u, reverseBits(1u)) << (u_input.e % vec3<u32>(32u))));
    let var_0 = _wgslsmith_mod_u32(func_1(), u_input.c);
    var var_1 = func_2();
    var var_2 = Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7074u, 24758u, 0u) & u_input.d, max(vec4<u32>(4294967295u, var_1.a.x, global0.a.x, 0u), u_input.d))), 18u)], _wgslsmith_dot_vec4_u32(~u_input.d, u_input.d), ~u_input.c));
    var_2 = func_2();
    var_2 = global1[_wgslsmith_index_u32(14000u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(~firstLeadingBit(u_input.b.yy))), u_input.d.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(var_1.a.x, 18u)])), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1335f * _wgslsmith_f_op_f32(floor(-779f)))))));
}

