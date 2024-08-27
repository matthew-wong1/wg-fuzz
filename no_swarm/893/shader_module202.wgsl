struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1114f, _wgslsmith_f_op_f32(round(arg_0.x)))))), 1603f, arg_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -853f), -1158f)))));
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-arg_3, _wgslsmith_dot_vec3_i32(u_input.b.yww, vec3<i32>(-1i, u_input.a.x, arg_3)), _wgslsmith_clamp_i32(u_input.a.x | arg_3, countOneBits(u_input.a.x), ~0i)), select(countOneBits(u_input.b.yzy) | -vec3<i32>(u_input.a.x, arg_3, 2147483647i), u_input.a.xxz, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), 578u, var_0, true);
    var var_2 = arg_2.x;
    var var_3 = vec2<i32>(-1i) * -(~firstTrailingBit(vec2<i32>(0i, u_input.a.x)));
    var var_4 = i32(-1i) * -u_input.a.x;
    return abs(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(arg_2.zwy, vec3<u32>(0u, arg_2.x, 20636u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.x, arg_2.x), arg_2.yyw)), ~arg_2.xww), _wgslsmith_sub_u32(var_1.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(18084u, 4294967295u), min(36885u, 0u)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: u32) -> vec3<f32> {
    let var_0 = ~(1u >> (_wgslsmith_add_u32(~4294967295u, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(454f, arg_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 950f)), select(vec4<u32>(6487u, arg_3, arg_3, arg_3), vec4<u32>(arg_3, 4294967295u, 29038u, 105950u), arg_2.x), 1i)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(521f)), _wgslsmith_f_op_f32(f32(-1f) * -1683f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -217f) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(936f, 721f, 895f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(198f, 290f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, 573f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, -313f, 1901f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f + arg_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(floor(2540f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(487f)) + -730f))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-512f, -382f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-602f)) + _wgslsmith_f_op_f32(1257f + -856f)))));
    var var_1 = _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-1597f, 472f));
    let var_2 = u_input.a.wyy;
    let var_3 = Struct_1(var_2, ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(_wgslsmith_mult_i32(0i, var_2.x), var_2.x, _wgslsmith_div_i32(-19110i, var_2.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -727f) - vec2<f32>(1000f, var_0)))), vec3<bool>(false, true, true), 0u))), true);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x * var_0))) - var_0) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f * var_3.c.x)), -854f)));
    return min(_wgslsmith_dot_vec2_i32(vec2<i32>(~35776i ^ (12964i | var_3.a.x), abs(-35946i >> (1u % 32u))), vec2<i32>(35351i, i32(-1i) * -2147483647i)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zzw, _wgslsmith_clamp_u32(34177u, 4294967295u, 0u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-475f, 1505f, 1439f), vec3<f32>(-278f, -550f, -262f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(618f, 909f, 1303f), vec3<f32>(-528f, 486f, -400f), vec3<bool>(true, false, false)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1187f, -128f, -1000f)))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-542f, 454f)) * _wgslsmith_f_op_f32(1387f - -343f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1373f - -1606f)));
    var var_1 = _wgslsmith_f_op_f32(-1290f + -397f);
    var var_2 = -u_input.a.yzw;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -1556f)))), 1605f)));
    let var_3 = var_0.c;
    let var_4 = vec2<bool>(true, true);
    let var_5 = -func_1();
    let var_6 = var_0;
    var var_7 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-368f, -496f, _wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(270f - var_6.c.x))) * vec4<f32>(-1000f, -1000f, _wgslsmith_div_f32(var_6.c.x, 246f), 809f)), vec4<f32>(var_6.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_6.c.x)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(-19690i, var_0.a.x, -8454i)), vec3<i32>(var_6.a.x, var_5, var_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.zx * vec2<f32>(var_6.c.x, var_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(505f, var_3.x) * vec2<f32>(-606f, var_6.c.x)), !var_0.d)), select(select(vec3<bool>(var_0.d, true, true), vec3<bool>(var_6.d, false, var_6.d), vec3<bool>(var_0.d, true, var_6.d)), !vec3<bool>(false, false, var_4.x), true), ~func_3(vec2<f32>(-2361f, var_6.c.x), vec2<f32>(var_6.c.x, -1152f), vec4<u32>(0u, var_6.b, 56000u, 57770u), -2147483647i))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_div_f32(-213f, var_6.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - var_6.c.x), _wgslsmith_f_op_f32(-var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.xz ^ var_6.a.xy, vec2<i32>(1i, 0i)), -1i, select(var_5, _wgslsmith_sub_i32(-1i, var_0.a.x), select(var_0.d, true, var_6.d)))), var_0.a);
}

