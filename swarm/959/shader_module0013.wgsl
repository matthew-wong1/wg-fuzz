struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -365f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)));
    global0 = -732f;
    global0 = _wgslsmith_f_op_f32(min(-2811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(-490f, 1791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f * 1065f)))) * 1f)));
    var var_1 = vec3<u32>(~4294967295u, ~63283u, ~(~_wgslsmith_clamp_u32(26635u, 1u, 13933u)));
    global0 = _wgslsmith_f_op_f32(abs(533f));
    return ~u_input.a.wz;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = ~(-1i);
    var var_1 = arg_1.a.yw;
    var_1 = arg_1.a.ww;
    var_1 = func_2();
    let var_2 = any(vec4<bool>(!all(vec3<bool>(true, arg_0.x, arg_0.x)), true, arg_0.x, var_1.x >= 15049i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1929f, -876f)) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(f32(-1f) * -1789f)))));
    global0 = var_0.x;
    global0 = _wgslsmith_f_op_f32(1354f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f), var_0.x)));
    let var_1 = Struct_1(min(_wgslsmith_mult_vec4_i32(u_input.a, countOneBits(u_input.a)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, -u_input.a.x, u_input.a.x)) & (vec4<i32>(-1i) * -abs(u_input.a)), u_input.a.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-1055f * -1247f));
    var var_3 = 1u;
    var_3 = _wgslsmith_add_u32(func_1(!vec3<bool>(all(vec3<bool>(true, false, false)), u_input.a.x >= -1i, true), var_1, ~select(~19903u, ~60302u, true)), abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(94u, 14765u), vec2<u32>(18077u, 97624u))) << (15629u % 32u));
    var var_4 = ~vec3<u32>(~1u, 4294967295u, 0u);
    let var_5 = Struct_2(352f);
    let x = u_input.a;
    s_output = StorageBuffer(24002i, 1f, var_1.a.wwy, 65461u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)))));
}

