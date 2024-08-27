struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = -u_input.a.yy;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1348f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, -117f, -544f, 691f) * vec4<f32>(-875f, 382f, 641f, 581f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, 133f, 1208f, -1000f) - vec4<f32>(2281f, -453f, 850f, 2715f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1239f, -1000f, 1456f, -287f))), vec4<f32>(1f, 1f, 1f, 1f)))), u_input.c, false);
    let var_2 = select(_wgslsmith_mod_vec2_i32(u_input.d.yz, u_input.d.zx), var_0, false);
    let var_3 = var_1.e;
    var var_4 = var_1;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.d.x;
    var_0 = ~abs(u_input.d.x);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, u_input.a.x, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x) << ((arg_0.d >> (0u % 32u)) % 32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.d.x, 28125i, 2147483647i), -reverseBits(u_input.d))) | u_input.d;
    let var_2 = arg_2.a;
    var var_3 = var_2;
    return -317f;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = arg_1.c.www;
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2126f - -510f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a + -1019f))), _wgslsmith_f_op_f32(f32(-1f) * -419f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(167f)))))));
    var var_1 = all(select(arg_3, arg_3, !(!arg_1.e)));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xz & vec2<i32>(u_input.a.x, u_input.d.x), u_input.a.yy), countOneBits(firstLeadingBit(abs(vec2<i32>(2147483647i, u_input.a.x))))), ~(-95464i | u_input.d.x));
    var var_3 = var_2;
    return -365f;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<f32> {
    let var_0 = func_2();
    let var_1 = u_input.a.x;
    let var_2 = !select(!(0i != var_1), true, true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_2, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(-1000f, var_0.c, vec4<f32>(arg_1, -475f, arg_1, arg_1), var_0.d, true), false, var_0)), var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, -762f, -1000f, arg_1)), u_input.b, all(vec2<bool>(false, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-159f, -935f))), select(select(vec2<bool>(arg_0, var_0.e), vec2<bool>(true, true), true), !vec2<bool>(var_2, false), !vec2<bool>(arg_0, var_0.e)))) * _wgslsmith_f_op_f32(abs(522f))), _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(func_3(Struct_1(-481f, var_0.b, var_0.c, u_input.c, var_0.e), var_2, var_0)), 480f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f * 188f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))) * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(924f)) * _wgslsmith_f_op_f32(f32(-1f) * -471f))), -697f), ~(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 73574u), vec3<u32>(67658u, u_input.b, var_0.d)))), true);
    let var_4 = min(vec4<u32>(~_wgslsmith_add_u32(var_0.d, 10162u), ~(~var_3.d), var_0.d, ~(~var_0.d << (~8481u % 32u))), select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(6206u, 1746u, 4294967295u, 0u)), vec4<u32>(u_input.b, 39374u, var_3.d, var_3.d)), abs(vec4<u32>(var_3.d, var_0.d, var_3.d, 65667u) ^ vec4<u32>(u_input.c, 0u, var_0.d, u_input.c))), vec4<u32>(~(~0u), ~_wgslsmith_clamp_u32(3018u, var_3.d, 4294967295u), _wgslsmith_mult_u32(u_input.b, 74182u), abs(33896u)), vec4<bool>(true, !(true == var_0.e), _wgslsmith_sub_u32(var_3.d, 61185u) != _wgslsmith_clamp_u32(0u, u_input.c, 0u), var_2)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(300f, var_3.b.x))), _wgslsmith_f_op_f32(-var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(848f * -2032f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-438f, -400f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1243f, 104f)))))));
    var_0 = _wgslsmith_clamp_i32(1i, abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d.x ^ u_input.d.x, u_input.a.x), -68681i)), firstLeadingBit(~(-1i)) >> (_wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(u_input.c, u_input.b, 6802u & u_input.c)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(exp2(func_2().c.zxz)), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1677f + var_1.x)))), var_1.x), 14986i, 745f);
}

