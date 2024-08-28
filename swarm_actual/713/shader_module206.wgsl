struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, true, false, false, false, true, false, false, true, false, false, false, true, false, false, false, false, false, true, false, true, true, false, true);

var<private> global1: vec2<bool>;

var<private> global2: array<f32, 28>;

var<private> global3: array<f32, 9>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 9u)] * global3[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 28u)])) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.d, 9u)], -1145f)) * _wgslsmith_f_op_f32(f32(-1f) * -915f)), false, false), u_input.a, true);
    let var_1 = vec3<i32>(0i, reverseBits(u_input.b), -28125i);
    var var_2 = ~vec4<u32>(u_input.d, 4294967295u, 28879u, _wgslsmith_sub_u32(35852u, _wgslsmith_div_u32(12925u & u_input.d, 4294967295u)));
    var_2 = ~(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(var_2.x, 0u, 0u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(18118u, var_2.x, 1u, var_2.x) | vec4<u32>(u_input.d, 23812u, 4294967295u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 3373u, 1u), vec4<u32>(38038u, 1u, u_input.d, var_2.x)))));
    global0 = array<bool, 25>();
    return Struct_4(firstTrailingBit(firstTrailingBit(abs(select(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(0u, var_2.x, 34204u, var_2.x), global1.x)))), !var_0.a.x, true);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = false;
    var var_1 = arg_0;
    var_1 = Struct_3(Struct_2(arg_0.a.a), u_input.a);
    let var_2 = true;
    global3 = array<f32, 9>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = ~(~firstTrailingBit(~select(vec3<i32>(u_input.b, -7026i, u_input.a), vec3<i32>(0i, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.d, 25u)])));
    let var_2 = func_1();
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, 22223u, 13173u), _wgslsmith_div_vec3_u32(~(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x) ^ min(var_2.a.xwy, vec3<u32>(u_input.d, u_input.d, var_2.a.x))), vec3<u32>(var_2.a.x, 67415u, u_input.d)));
    var var_4 = vec3<u32>(~(u_input.d & var_2.a.x), ~u_input.d, ~min(max(1u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(55005u, 30259u))));
    var var_5 = Struct_3(Struct_2(reverseBits(max(~var_2.a.zy, vec2<u32>(var_2.a.x, var_2.a.x)))), -20830i);
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 28u)]), 357f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_4.x, 28u)]))) * vec3<f32>(-1052f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(var_3.yz), u_input.b), -1165f)) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_4.x, 9u)])), 290f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, _wgslsmith_div_u32(~38825u, ~u_input.d) | ~var_4.x, ~abs(~1u), ~var_2.a.x), ~(~(~var_3.x)));
}

