struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1996f)) - 1848f)))), -1061f));
    global0 = array<Struct_1, 25>();
    var var_1 = var_0;
    global0 = array<Struct_1, 25>();
    var var_2 = ~(~(~(~0u)));
    return Struct_1(~(-select(arg_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(14418i, 1i, -4675i, 12429i), vec4<i32>(arg_1.b.x, -39103i, -9691i, -65873i)), true)), -arg_1.b);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_0 = u_input.a.wy;
    var_0 = u_input.a.xz;
    return vec2<bool>(var_0.x < u_input.a.x, all(vec2<bool>(true, true)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec2<u32> {
    let var_0 = vec4<u32>(u_input.b, abs(_wgslsmith_sub_u32(37143u, u_input.a.x)) << ((4294967295u & u_input.b) % 32u), 4294967295u, max(u_input.a.x, 25797u)) >> (select(vec4<u32>(4294967295u, ~63073u, _wgslsmith_div_u32(48163u, 1u) >> (u_input.b % 32u), ~(u_input.a.x >> (4294967295u % 32u))), vec4<u32>(firstTrailingBit(0u), 1u, 37002u, ~43887u), select(!vec4<bool>(arg_1, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, !arg_0.x, !arg_1, arg_1), true)) % vec4<u32>(32u));
    global0 = array<Struct_1, 25>();
    let var_1 = global0[_wgslsmith_index_u32(var_0.x, 25u)];
    global0 = array<Struct_1, 25>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 25u)];
    return ~vec2<u32>(1u, 17768u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec4<bool>(all(vec2<bool>(true, true)), !(21318u != u_input.b), true, true)), any(func_2(func_1(true, Struct_1(-10540i, vec2<i32>(28578i, 2147483647i))), 0u, global0[_wgslsmith_index_u32(61271u, 25u)], Struct_1(-21602i, vec2<i32>(331i, 10548i)))) || true, all(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, 1i), func_3(var_0.yxy, true), abs(vec4<i32>(2147483647i ^ select(-1i, 25918i, true), firstLeadingBit(i32(-1i) * -2147483647i), i32(-1i) * -36361i, i32(-1i) * -47187i)), abs(1i));
}

