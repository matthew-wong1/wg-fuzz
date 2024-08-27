struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7090i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 10804u, 4294967295u, 74379u), vec4<u32>(52122u, 1u, 1u, 12375u)) ^ select(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(11601u, 40076u, 3769u, 5607u), vec4<u32>(37471u, 61163u, 0u, 20907u)), true), vec3<bool>(false, true, any(vec4<bool>(false, true, false, false))), -2147483647i, false, vec3<u32>(1u, 1u, 1u)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, select(1u, 4294967295u, false), 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(true, select(true, true, true), false), max(_wgslsmith_mult_i32(-19941i, _wgslsmith_clamp_i32(34343i, 0i, 1i)), -u_input.a), true, ~vec3<u32>(1u, ~0u, ~1u)));
    let var_1 = Struct_2(Struct_1(var_0.b.a, vec3<bool>(false, true, any(select(vec4<bool>(true, true, var_0.a.d, true), vec4<bool>(var_0.a.d, true, true, true), var_0.b.b.x))), var_0.a.c, false, ~(~var_0.a.a.yzy & ~var_0.b.e)), var_0.b);
    var_0 = var_1;
    var var_2 = var_1.a.e.xx;
    global0 = var_0.a.c;
    return var_0.a.a;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    global0 = max(-(~u_input.b), 0i);
    var var_0 = u_input.d;
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(abs(min(func_3(), ~arg_2.a)), arg_2.a), !select(!select(arg_2.b, vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, arg_2.d)), !arg_2.b, arg_2.b), var_0.x, -1820f < _wgslsmith_div_f32(312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 2337f)))), arg_2.e);
    let var_2 = vec4<bool>(~var_1.e.x == (4294967295u >> (1u % 32u)), true, true, !select(true, select(true, arg_1.x > arg_1.x, true), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-790f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1063f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f))), 625f, arg_1.x));
    return !(!select(select(select(vec4<bool>(var_2.x, false, var_2.x, arg_0), var_2, true), var_2, !var_2), vec4<bool>(arg_0 || false, all(vec4<bool>(arg_2.d, true, false, true)), !var_1.d, true), _wgslsmith_f_op_f32(max(arg_1.x, 1919f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = false;
    var var_1 = all(vec4<bool>(any(select(func_2(true, vec3<f32>(1000f, 1000f, 788f), Struct_1(vec4<u32>(33951u, 0u, 48309u, 30545u), vec3<bool>(true, arg_0, arg_0), -12861i, false, vec3<u32>(4294967295u, 1u, 54916u)), 143428u), vec4<bool>(true, arg_0, false, true), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, arg_0, arg_0, true), true))), select(true, !arg_0, select(arg_0, false, true & arg_0)), arg_0, !(!any(vec2<bool>(arg_0, arg_0)))));
    global0 = u_input.b;
    var var_2 = u_input.d;
    var var_3 = vec4<i32>(-9863i, u_input.c, var_2.x, var_2.x) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(5397u, 6463u, 12199u, 0u), vec4<u32>(0u, 0u, 6632u, 35301u)), ~34696u, _wgslsmith_mult_u32(5639u, 53726u)), ~vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    return Struct_1(~_wgslsmith_sub_vec4_u32(func_3(), _wgslsmith_div_vec4_u32(~vec4<u32>(20556u, 44471u, 50820u, 39442u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 1096u, 1u), vec4<u32>(1u, 0u, 40416u, 1u), vec4<u32>(8887u, 31566u, 4287u, 1u)))), vec3<bool>(true || all(!vec4<bool>(arg_0, true, false, true)), true, arg_0 || true), var_3.x, false, ~vec3<u32>(max(~1u, 4294967295u), firstTrailingBit(~34164u), _wgslsmith_add_u32(_wgslsmith_mult_u32(20197u, 0u), ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!all(vec4<bool>(false, true, true, false))));
    var var_1 = func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, var_0.e.x, _wgslsmith_f_op_f32(abs(3130f)));
}

