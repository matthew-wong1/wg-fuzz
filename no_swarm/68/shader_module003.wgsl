struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-1572f, -796f));

var<private> global1: array<vec4<bool>, 4>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, u_input.e), ~vec2<u32>(53123u, u_input.e.x))), ~_wgslsmith_div_vec2_u32(u_input.e << (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u)), max(u_input.b, u_input.e)) << (u_input.b % vec2<u32>(32u)));
    let var_1 = abs(~(~(~(~vec4<u32>(var_0.x, 45786u, u_input.e.x, u_input.c)))));
    global1 = array<vec4<bool>, 4>();
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(countOneBits(~_wgslsmith_div_vec3_u32(var_1.wzx, var_1.ywy))), vec3<u32>(75468u << (var_0.x % 32u), var_1.x, firstLeadingBit(1u) << ((var_1.x | _wgslsmith_add_u32(u_input.a, 1u)) % 32u)), vec3<u32>(~0u, ~51524u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(var_0), min(var_1.zz, _wgslsmith_sub_vec2_u32(var_1.yz, u_input.e)))));
    var_2 = var_1.xzw;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> f32 {
    global0 = array<vec2<f32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(ceil(-260f));
    let var_1 = _wgslsmith_mod_u32(func_3(), _wgslsmith_sub_u32(~_wgslsmith_add_u32(0u, 29577u), abs(87312u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x), arg_0.a)) ^ countOneBits(arg_0.a.x));
    let var_2 = Struct_1(vec4<u32>(1u, var_1, abs(var_1), _wgslsmith_mult_u32(arg_0.a.x, ~(~4294967295u))));
    let var_3 = ~u_input.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2194f, -350f) * _wgslsmith_f_op_f32(201f * 961f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = 1f;
    let var_1 = _wgslsmith_add_vec3_u32(~(abs(arg_1.b.a.wyz) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(31258u, 38579u, 10978u), arg_1.b.a.xyz), min(arg_0.a, arg_0.a)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.a.x, 54246u, arg_0.a.x), arg_0.a)), vec3<u32>(~arg_1.b.a.x, select(arg_0.b.a.x, 38227u, true), ~arg_1.b.a.x) << ((arg_0.a ^ (vec3<u32>(arg_0.a.x, 10257u, 0u) | arg_0.a)) % vec3<u32>(32u))));
    let var_2 = 1u;
    global1 = array<vec4<bool>, 4>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1.b.a), vec2<bool>(true, all(vec3<bool>(true, true, true))), 0i, true & (arg_1.a.x >= 1u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f)))));
    return _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 59589u, _wgslsmith_mod_u32(max(_wgslsmith_mod_u32(arg_0.a.x, 67110u), arg_1.a.x), ~countOneBits(u_input.c))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1921f))), _wgslsmith_f_op_f32(f32(-1f) * -492f));
    let var_1 = 1i;
    global0 = array<vec2<f32>, 1>();
    let var_2 = _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~(~66340u), 0u, ~0u), _wgslsmith_clamp_vec3_u32(func_1(Struct_2(vec3<u32>(u_input.e.x, 1u, u_input.c), Struct_1(vec4<u32>(u_input.c, 4294967295u, 54066u, u_input.b.x))), Struct_2(vec3<u32>(232u, 28415u, 1u), Struct_1(vec4<u32>(43988u, u_input.b.x, u_input.b.x, u_input.c)))), vec3<u32>(13977u, 21796u, u_input.a) ^ vec3<u32>(u_input.b.x, u_input.c, u_input.c), vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.a), 1u, abs(0u)))));
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, 28486u), vec4<i32>(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(2824i << (var_2 % 32u), max(u_input.d.x, -2147483647i), _wgslsmith_div_i32(1i, var_1)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(-2147483647i, 46187i, 1i), u_input.d)), i32(-1i) * -35714i, min(-31895i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, 588f, 817f, 358f))) + vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1048f)), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1641f) + 1059f), _wgslsmith_f_op_f32(var_0 - var_0))));
}

