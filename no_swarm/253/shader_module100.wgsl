struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, true, true));

var<private> global1: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> f32 {
    global1 = _wgslsmith_div_i32(~(-u_input.b.x), u_input.a.x);
    global1 = -_wgslsmith_mult_i32(11593i, -(~_wgslsmith_mult_i32(42949i, arg_0.x)));
    return 1000f;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = vec2<bool>(true, true);
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    var var_1 = _wgslsmith_add_i32(18383i, _wgslsmith_sub_i32(~(-17675i), firstTrailingBit(u_input.c)));
    let var_2 = Struct_1(arg_0.a.a.a, 6290u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.c.x, arg_3.a.a.c.x, _wgslsmith_f_op_f32(exp2(arg_3.a.a.c.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x * arg_0.a.b.c.x), _wgslsmith_f_op_f32(-2007f + -1607f), -1148f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_2.c.x, arg_0.a.a.c.x), -1291f))));
    return abs(_wgslsmith_div_u32(11155u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.a)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = vec2<bool>(arg_2, false);
    let var_1 = Struct_1(vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 10913u), arg_3.a.b.a), func_3(arg_3, vec2<u32>(37175u, 11439u), Struct_1(u_input.e.wy, arg_3.a.a.a.x, vec3<f32>(arg_3.a.a.c.x, arg_3.a.b.c.x, 364f)), Struct_3(arg_3.a))) ^ arg_3.a.a.a.x, _wgslsmith_clamp_u32(~19048u, max(arg_3.a.b.a.x, arg_3.a.a.a.x), 93423u)), u_input.d, vec3<f32>(1128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b, arg_3))) + 933f), arg_3.a.b.c.x));
    let var_2 = _wgslsmith_add_vec4_u32(u_input.e, max(u_input.e, u_input.e));
    global1 = 32501i;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 319f)))), _wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(func_1(u_input.b, arg_3)))))));
    return _wgslsmith_div_u32(38274u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(78892u, _wgslsmith_sub_u32(16387u, var_2.x)), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xw;
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(u_input.e.wy, ~4294967295u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(553f, 170f, 661f)))))));
    let var_3 = Struct_1(abs(~vec2<u32>(u_input.e.x, var_2.b) << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, var_2.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), var_2.a)) % vec2<u32>(32u))), var_2.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(13237i, -29712i, u_input.a.x, 2894i), Struct_3(Struct_2(Struct_1(vec2<u32>(var_2.a.x, 0u), var_2.a.x, var_2.c), Struct_1(var_2.a, 51046u, vec3<f32>(995f, var_2.c.x, var_2.c.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + -1195f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1397f, var_2.c.x, 582f))), var_1.x)));
    let var_4 = reverseBits(var_3.b);
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(2697u, var_2.a.x, 1u, var_4) ^ vec4<u32>(0u, 4294967295u, var_2.a.x, var_3.b), ~u_input.e, vec4<bool>(false, false, var_1.x, var_1.x)), u_input.e)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.x, abs(u_input.a.x), -1i, ~u_input.c), vec4<i32>(u_input.b.x, reverseBits(var_0.x), u_input.b.x, ~1i)), abs(u_input.c), abs(~u_input.a.x)), vec3<u32>(~(func_2(true, false, var_1.x, Struct_3(Struct_2(Struct_1(var_3.a, 18323u, var_3.c), Struct_1(vec2<u32>(36154u, 0u), 4294967295u, var_3.c)))) << (_wgslsmith_add_u32(68125u, var_4) % 32u)), 71818u, 2258u), -1000f);
}

