struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(abs(_wgslsmith_mod_vec2_u32(max(u_input.a.zz, vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 26020u), vec2<u32>(arg_0.a.a.x, arg_0.a.a.x)))), ~(-arg_1)), arg_0.b);
    var_0 = -u_input.b;
    var var_2 = var_1.a;
    return -2147483647i;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_f32(-753f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-208f + _wgslsmith_f_op_f32(min(448f, -1208f))), _wgslsmith_f_op_f32(step(434f, -2188f))), 1f)));
    let var_1 = vec3<bool>(u_input.b >= u_input.b, true, true);
    global0 = u_input.b;
    let var_2 = Struct_1(~(~_wgslsmith_mult_vec2_u32(~u_input.a.yz, ~vec2<u32>(45724u, 4294967295u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, u_input.b, -35750i)), ~(-2709i)), ~(-10268i)));
    global0 = firstTrailingBit(-_wgslsmith_div_i32(~var_2.b, -u_input.b));
    return abs(var_2.b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(~(~min(vec3<i32>(2147483647i, 1i, -14672i), vec3<i32>(u_input.b, -1i, u_input.b))), ~max(countOneBits(vec3<i32>(u_input.b, -2147483647i, -12095i)), -vec3<i32>(-2147483647i, -2147483647i, u_input.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, i32(-1i) * -u_input.b), vec2<i32>(_wgslsmith_add_i32(~u_input.b, u_input.b), 1i)), ~(-func_2(Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.b) << (u_input.a.x % 32u)));
    var var_1 = func_3();
    let var_2 = false;
    var_1 = -15117i;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~firstTrailingBit(countOneBits(u_input.a.x)), 4294967295u), ~(_wgslsmith_mult_u32(u_input.a.x ^ 0u, 1u) & u_input.a.x));
    return Struct_1((select(abs(u_input.a.wy), ~vec2<u32>(54313u, var_3), true) ^ min(~vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(49536u, 4294967295u))) | ~select(~vec2<u32>(4294967295u, var_3), vec2<u32>(17313u, 0u), any(vec2<bool>(true, var_2))), abs(countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13792i, var_0.x, var_0.x, -13156i), vec4<i32>(-2147483647i, 37195i, -24239i, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-638f)))), 940f));
    global0 = u_input.b;
    global0 = 2147483647i;
    global0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-753f)), _wgslsmith_f_op_f32(select(-2211f, 1750f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -995f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2256f, _wgslsmith_f_op_f32(ceil(1803f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -357f) - vec2<f32>(1018f, 223f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1266f, 278f))), vec2<f32>(449f, -188f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

