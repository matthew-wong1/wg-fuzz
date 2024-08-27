struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 620f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_3 {
    var var_0 = 21202u;
    var_0 = 1u;
    let var_1 = Struct_4(~u_input.a > ~u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, 2129f, -1200f) + vec3<f32>(227f, -175f, 1207f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-446f, 636f, -1827f), vec3<f32>(-1000f, -1201f, -102f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(723f)), _wgslsmith_div_f32(262f, -124f), u_input.b.x > -2147483647i)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173f + -757f) * _wgslsmith_f_op_f32(select(984f, -266f, false)))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 12456u) ^ u_input.a, ~abs(u_input.a), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_1.b.a.xx));
    var_0 = u_input.a;
    return Struct_3(~vec4<i32>(~22648i, ~u_input.b.x, u_input.b.x, u_input.b.x ^ 0i) ^ ~abs(u_input.b), var_1.b, var_1.b.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f - 291f));
    var var_0 = !(!arg_0.x);
    let var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(71325u, ~4294967295u, ~u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(~4294967295u, u_input.a << (1u % 32u), _wgslsmith_mult_u32(19852u, 1u)) | firstTrailingBit(~vec3<u32>(4055u, u_input.a, u_input.a)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -699f);
    var var_2 = ~1u;
    return func_2();
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.b.a.yx)) * _wgslsmith_f_op_vec2_f32(exp2(arg_3.b.a.yx)))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b.b)), arg_1.a.x)))) * _wgslsmith_f_op_f32(-arg_3.c));
    global0 = _wgslsmith_f_op_f32(sign(arg_1.a.x));
    let var_2 = var_0.b.d.x;
    return max(~(~1u), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(false, true, false), vec2<bool>(any(vec2<bool>(u_input.b.x == 10225i, true)), any(vec3<bool>(true, true, true))), u_input.b.zy, _wgslsmith_add_vec4_i32(u_input.b ^ abs(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), vec4<i32>(38460i, u_input.b.x, 1i, -u_input.b.x)));
    var var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(exp2(var_0.b.a.x)), _wgslsmith_f_op_f32(round(-2161f)), _wgslsmith_f_op_f32(var_0.b.a.x * -1106f)), vec4<f32>(-1080f, _wgslsmith_f_op_f32(377f * var_0.c), _wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(-var_0.b.a.x)), !(!vec4<bool>(true, true, false, var_0.b.c.x))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c - var_0.b.b), _wgslsmith_f_op_f32(-1310f * var_0.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))), var_0.b.a.x, -1465f)))));
    let var_3 = abs(vec4<u32>(~_wgslsmith_mod_u32(func_3(2147483647i, Struct_5(var_2.ww), false, Struct_3(var_0.a, Struct_1(vec3<f32>(1504f, var_2.x, var_2.x), var_0.c, var_0.b.c, var_0.b.d), var_0.b.b)), ~u_input.a), var_0.b.d.x, _wgslsmith_clamp_u32(8484u, 24833u, 0u), abs(25913u)));
    global0 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_4 = abs(var_0.b.d.x);
    var var_5 = Struct_4(true, var_0.b, !(!var_0.b.c));
    global0 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-219f + 703f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(60539u, var_4, 0u, 4294967295u), vec4<u32>(29560u, var_4, var_3.x, 39161u)), var_0.b.d.x >> ((var_5.b.d.x << (var_0.b.d.x % 32u)) % 32u), _wgslsmith_clamp_u32(var_0.b.d.x, var_3.x, ~53680u)), u_input.b, vec3<u32>(4294967295u, 1u, _wgslsmith_add_u32(1u, 25152u & var_3.x)), 19692u);
}

