struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1596f, 1570f, 171f), vec3<f32>(-662f, 133f, -378f), vec3<f32>(-2070f, -184f, -170f), vec3<f32>(162f, 1184f, 1000f), vec3<f32>(-414f, 386f, -299f));

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = -1926f;
    let var_1 = 1348f;
    var var_2 = !vec4<bool>(all(vec3<bool>(false, arg_0, true)) || select(false, u_input.b.x >= u_input.b.x, true), false | all(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0))), true, arg_0);
    let var_3 = abs(u_input.b.wxz);
    var var_4 = var_1;
    return u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = u_input.c;
    global0 = array<vec3<f32>, 5>();
    var var_2 = vec3<u32>(u_input.b.x, ~(~u_input.b.x ^ 4294967295u), ~func_3(!(true && var_0.a)));
    global0 = array<vec3<f32>, 5>();
    return arg_0;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b) <= (24494u >> (u_input.b.x % 32u)))));
    let var_1 = Struct_1(var_0.a && false);
    return vec4<bool>(var_1.a, -(~func_2(-79713i, Struct_1(var_0.a), u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 20u)])) > (u_input.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(3006u, 16039u, 35128u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 5173u, u_input.b.x) >> (vec4<u32>(u_input.b.x, 68013u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % 32u)), all(select(vec4<bool>(var_1.a, true, var_1.a, true), select(vec4<bool>(var_1.a, var_1.a, true, var_0.a), vec4<bool>(true, false, var_1.a, var_1.a), vec4<bool>(var_0.a, true, var_0.a, true)), true | all(vec3<bool>(false, var_1.a, var_0.a)))), var_1.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_1(arg_2.a);
    global1 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_div_i32(-reverseBits(abs(1i)), 5165i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_3.x, 5u)]);
    let var_3 = arg_3.x;
    return -384f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, true, true && select(true, true, false));
    var_0 = u_input.b.x < 4294967295u;
    var var_1 = _wgslsmith_mod_i32(u_input.a, ~(2147483647i << (~(0u & u_input.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), func_1(), global1[_wgslsmith_index_u32(~8321u, 20u)], vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))))))), u_input.a, u_input.b.x, vec3<i32>(1i, (~u_input.c.x >> (~20083u % 32u)) | 5386i, _wgslsmith_clamp_i32(~firstLeadingBit(-20448i), 16270i, -48160i >> (u_input.b.x % 32u))));
}

