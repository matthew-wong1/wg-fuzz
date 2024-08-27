struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: i32 = 2997i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> bool {
    global0 = array<Struct_1, 27>();
    global1 = -1i;
    let var_0 = Struct_2(_wgslsmith_mod_u32(~(~4294967295u), u_input.c.x), 417f, Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, u_input.a)), vec2<i32>(u_input.d, 2147483647i)), vec2<i32>(-23544i, 567i))));
    var var_1 = Struct_1(var_0.c.a);
    var_1 = var_0.c;
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = ~_wgslsmith_clamp_u32(arg_1, abs(1u), 1u);
    let var_1 = Struct_1(arg_0.a);
    let var_2 = !(!vec4<bool>(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 2147483647i, -2147483647i, arg_0.a.x), vec4<i32>(2147483647i, arg_0.a.x, 1i, arg_0.a.x)) != var_1.a.x, true, any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, true)))));
    return ~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, arg_1), _wgslsmith_mod_vec3_u32(u_input.b.xzx, vec3<u32>(arg_1, 4294967295u, arg_1))) | arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = vec2<u32>(reverseBits(u_input.b.x >> (select(_wgslsmith_mod_u32(u_input.b.x, 56443u), 14511u, func_1()) % 32u)), _wgslsmith_mult_u32((func_2(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 14365u, true, 519f) << (52850u % 32u)) << (1u % 32u), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1849f * _wgslsmith_f_op_f32(f32(-1f) * -1270f))), 30921i, _wgslsmith_add_i32(u_input.a, i32(-1i) * -(u_input.d ^ -29093i)));
}

