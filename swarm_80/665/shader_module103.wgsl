struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<i32> {
    global0 = ~u_input.c.x;
    var var_0 = select(_wgslsmith_clamp_vec2_i32(u_input.c.yy, u_input.c.yw, _wgslsmith_div_vec2_i32(u_input.d.yx, u_input.c.xw)) << (vec2<u32>(14286u, 588u) % vec2<u32>(32u)), countOneBits(max(countOneBits(u_input.c.zz), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, arg_0.d), vec2<i32>(43797i, 82507i)))), (arg_1.x & false) | any(vec3<bool>(true, true, true | arg_1.x)));
    let var_1 = !arg_1.yx;
    var_0 = u_input.c.xy | u_input.c.yx;
    var var_2 = Struct_2(~u_input.e, arg_0);
    return vec3<i32>(-u_input.c.x, arg_0.d, ~(-40145i));
}

fn func_2(arg_0: vec2<i32>) -> vec2<u32> {
    global0 = 20351i;
    var var_0 = u_input.d;
    var_0 = abs(_wgslsmith_div_vec3_i32(u_input.c.xwz, ~func_3(Struct_1(true, vec3<f32>(463f, -1086f, -1853f), vec4<bool>(true, true, true, false), 1i, vec4<bool>(true, true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    let var_1 = vec2<u32>(u_input.e.x, 1u & ~(~(u_input.a.x | 59233u)));
    let var_2 = _wgslsmith_clamp_vec2_i32(countOneBits(var_0.xx), vec2<i32>(var_0.x, var_0.x), var_0.xy);
    return vec2<u32>(u_input.e.x, ~1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = false;
    global0 = _wgslsmith_sub_i32(arg_1.d, ~arg_1.d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1150f));
    var_1 = 1140f;
    global0 = 1i;
    return _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(12762i, -1i, ~1i, arg_1.d) | vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d.x, arg_1.d), -14309i), 30145i, u_input.c.x, -1i));
}

fn func_1() -> vec2<f32> {
    global0 = ~(~(i32(-1i) * -37217i) << (u_input.e.x % 32u));
    let var_0 = u_input.b;
    global0 = u_input.b;
    global0 = ~(~_wgslsmith_div_i32(u_input.d.x, 0i));
    let var_1 = func_4(~_wgslsmith_clamp_vec2_u32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(var_0, u_input.d.x))), vec2<u32>(1u, ~3015u), vec2<u32>(firstLeadingBit(0u), 32268u)), Struct_1(!all(vec3<bool>(true, true, false)), vec3<f32>(_wgslsmith_f_op_f32(-609f * _wgslsmith_f_op_f32(427f + -348f)), -750f, -1911f), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true), i32(-1i) * -39331i, vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), func_2(u_input.d.yz).x <= _wgslsmith_mult_u32(u_input.e.x, 127719u), true, true)));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(426f, -1518f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(474f, -2274f), vec2<f32>(-3145f, -207f)), select(vec2<bool>(false, true), vec2<bool>(false, false), true))) + vec2<f32>(_wgslsmith_f_op_f32(-1149f * -1000f), _wgslsmith_f_op_f32(1320f + -770f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(firstTrailingBit(u_input.c.x), (i32(-1i) * -u_input.b) >> (u_input.e.x % 32u));
    global0 = min(u_input.d.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, -550f))))), vec2<bool>(true, all(vec3<bool>(true, true, true))))), u_input.e.x);
}

