struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1787f * _wgslsmith_f_op_f32(220f - 1000f)), -280f), ~abs(0u ^ (4294967295u << (u_input.a % 32u))));
    var var_1 = Struct_1(var_0.a, 544f, ~_wgslsmith_div_u32(~countOneBits(u_input.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.c, arg_3.x), _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(arg_0, 0u)))));
    var_1 = Struct_1(!all(!select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(arg_2.a, arg_2.a, var_0.a, false), vec4<bool>(true, true, false, var_1.a))), -620f, 1u);
    let var_2 = !(_wgslsmith_f_op_f32(floor(1747f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(812f)) * var_1.b)));
    let var_3 = var_0;
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<i32>(func_3(10135u, abs(arg_1), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-846f, arg_0.b)), _wgslsmith_sub_u32(~arg_0.c, 4294967295u)), ~abs(vec2<u32>(4294967295u, 1u))), 31503i, 2404i, 2147483647i);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-862f))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(1f * -1161f);
    let var_0 = arg_2.a;
    var var_1 = func_2(arg_2, arg_0);
    let var_2 = any(select(!vec2<bool>(select(arg_2.a, true, false), arg_3 >= u_input.b), select(vec2<bool>(any(vec2<bool>(var_1.a, false)), var_1.a), select(vec2<bool>(true, true), select(vec2<bool>(arg_2.a, true), vec2<bool>(var_1.a, arg_2.a), vec2<bool>(var_1.a, true)), select(vec2<bool>(true, false), vec2<bool>(var_0, var_1.a), vec2<bool>(arg_2.a, var_1.a))), vec2<bool>(!var_0, func_2(arg_2, 0i).a)), any(!select(vec2<bool>(false, true), vec2<bool>(var_0, arg_2.a), vec2<bool>(arg_2.a, var_0)))));
    let var_3 = ((_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_3, 2147483647i), -vec3<i32>(2147483647i, arg_0, -14719i)) & 55177i) >> (arg_2.c % 32u)) == arg_0;
    return 63447u;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = ~(~max(1u, ~(~1u)));
    let var_1 = func_5(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(true, -258f, 4294967295u), 0i), Struct_1(false, 1329f, 1u), true, true)))), 1f), func_2(func_2(Struct_1(u_input.b > u_input.b, -332f, 27417u & arg_0), u_input.b), u_input.b), 0i);
    var var_2 = func_2(Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-659f, -2087f)) - _wgslsmith_f_op_f32(min(-1000f, -361f))))), 0u), select(-8044i, ~firstTrailingBit(~u_input.b), true)).b;
    global0 = -1000f;
    var_2 = 1000f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(select(609f, -1545f, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, _wgslsmith_f_op_f32(round(-2771f)))))));
}

fn func_6(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> StorageBuffer {
    var var_0 = vec4<bool>(1136f <= arg_1.x, true, all(!vec4<bool>(arg_1.x < -2688f, true, true, true)), !(true | select(true, true, true)));
    var_0 = select(!vec4<bool>(~46062u < u_input.a, var_0.x, all(select(var_0.yxw, vec3<bool>(false, true, var_0.x), var_0.zzz)), var_0.x), !vec4<bool>(true, any(!vec3<bool>(false, var_0.x, true)), any(select(vec2<bool>(var_0.x, true), var_0.ww, var_0.x)), true), vec4<bool>(abs(~u_input.a) < abs(_wgslsmith_sub_u32(50658u, arg_0)), !var_0.x, true, !(false || func_2(Struct_1(var_0.x, -1164f, 1u), 12800i).a)));
    let var_1 = Struct_1(any(select(!(!vec2<bool>(var_0.x, var_0.x)), select(var_0.wy, vec2<bool>(true, true), !var_0.x), var_0.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1832f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(750f)), _wgslsmith_div_f32(arg_1.x, arg_1.x))))), _wgslsmith_mod_u32(~u_input.a, 1u));
    var var_2 = !(!var_0.wx);
    let var_3 = func_2(var_1, select(abs(-2147483647i), -1i, !(-149f == arg_1.x)));
    return StorageBuffer(_wgslsmith_dot_vec3_u32(~reverseBits(firstLeadingBit(vec3<u32>(var_1.c, u_input.a, 34818u))), ~vec3<u32>(_wgslsmith_clamp_u32(arg_0, u_input.a, 14779u), u_input.a, ~15837u)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), -632f)), ~vec4<i32>(countOneBits(2147483647i), arg_2, arg_2, min(i32(-1i) * -1i, _wgslsmith_sub_i32(28983i, arg_2))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -745f))) * _wgslsmith_f_op_f32(f32(-1f) * -290f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2435f, -990f))), 581f, var_3.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-872f, var_3.b))), _wgslsmith_f_op_f32(-var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -619f);
    global0 = _wgslsmith_div_f32(2530f, 1000f);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1403f, -597f, -659f, 611f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(863f, -1000f, 337f, 2337f) + vec4<f32>(400f, 365f, 301f, -1949f))), -2147483647i < ~u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(select(350f, -522f, false))), -396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(191f - -471f) + _wgslsmith_f_op_f32(-1444f * 853f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2558f, -141f)) * _wgslsmith_f_op_f32(select(358f, 1759f, false)))), firstLeadingBit(u_input.a | u_input.a) == 0u)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 540f, -766f, -1162f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-238f, 795f, 564f, -753f), vec4<f32>(-538f, 1000f, -1099f, -262f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, -437f, -738f, 1548f)))));
    var var_1 = _wgslsmith_sub_u32(u_input.a, 75526u);
    let var_2 = Struct_1(!(u_input.b <= _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.b)), -637f, ~(abs(u_input.a) ^ min(1u ^ u_input.a, min(8403u, 0u))));
    let x = u_input.a;
    s_output = func_6(u_input.a, _wgslsmith_f_op_vec2_f32(func_1(var_2.c)), _wgslsmith_mult_i32(abs(u_input.b) ^ u_input.b, -(~2147483647i)));
}

