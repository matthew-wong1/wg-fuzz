struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(78437u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(40580u, 85612u), vec2<u32>(5725u, 0u), vec2<u32>(50663u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 22079u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global1: array<u32, 30> = array<u32, 30>(54967u, 4294967295u, 0u, 4382u, 54610u, 4294967295u, 32860u, 24761u, 26027u, 42902u, 1u, 64436u, 27159u, 29045u, 101674u, 1u, 51119u, 8222u, 1u, 4294967295u, 14862u, 0u, 4294967295u, 0u, 1u, 1u, 20378u, 49973u, 36140u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(Struct_1(u_input.b >= u_input.b, u_input.c, 0i), true, firstTrailingBit(-2147483647i), abs(select(~min(vec4<u32>(53896u, 0u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 30u)]), u_input.a), vec4<u32>(79904u, 1u, 0u, 0u) & vec4<u32>(global1[_wgslsmith_index_u32(50816u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], 1u, u_input.b), true)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<vec2<u32>, 9>();
    let var_0 = func_2(!(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)], u_input.b), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)] << (global1[_wgslsmith_index_u32(14380u, 30u)] % 32u), 30u)]) >= (_wgslsmith_mult_u32(58983u, global1[_wgslsmith_index_u32(12034u, 30u)]) & ~105366u)));
    global1 = array<u32, 30>();
    global0 = array<vec2<u32>, 9>();
    var var_1 = 590f;
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1082f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    global0 = array<vec2<u32>, 9>();
    var var_0 = func_1(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -315f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1105f, var_0.a), vec2<f32>(-1112f, 787f))))))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(15912u, 4294967295u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(37480u, 30u)], 39239u), vec2<u32>(4294967295u, u_input.a.x))), u_input.c, u_input.c);
}

