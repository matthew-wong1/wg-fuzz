struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<f32, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.e, 19u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(6081u, 114383u, 11509u & u_input.e, 22950u), ~min(vec4<u32>(36346u, 0u, 34103u, var_0.c), vec4<u32>(var_0.c, 49599u, u_input.e, u_input.e))), vec4<u32>(abs(~u_input.e ^ var_0.c), 1u, _wgslsmith_mod_u32(var_0.c, 1155u | ~var_0.c), firstTrailingBit(u_input.e))), 19u)];
    var var_2 = ~_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 69050u, _wgslsmith_sub_u32(3285u, u_input.e), ~4294967295u), vec4<u32>(_wgslsmith_mult_u32(u_input.e, 43016u), _wgslsmith_mult_u32(0u, u_input.e), 1u, _wgslsmith_div_u32(29226u, 4294967295u)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 1u >> (1u % 32u), ~var_0.d.x, select(var_1.c, 4294967295u, true)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c, var_1.d.x, 1u, 0u), vec4<u32>(35236u, 16200u, 59460u, 1u)))));
    global3 = array<f32, 14>();
    global3 = array<f32, 14>();
    return vec4<u32>(firstTrailingBit(var_2.x), _wgslsmith_dot_vec2_u32(~var_0.d.yz, var_0.d.xz & ~vec2<u32>(0u, var_0.c)) ^ u_input.e, ~var_1.d.x, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4107u, 14u)])), -367f) + -657f) * global3[_wgslsmith_index_u32(abs(u_input.e), 14u)]), ~4294967295u & u_input.e, vec3<u32>(38843u, u_input.e, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_0.c), func_1(vec2<f32>(var_0.a, -1567f)), _wgslsmith_f_op_f32(-651f * -856f));
}

