struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(13141i);
    var var_1 = Struct_1(1i);
    var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_1(~abs(0i));
    return -u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    return ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1144f, -2022f) * vec2<f32>(1043f, -598f))) | -reverseBits(1i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(u_input.a << (countOneBits(~(~4294967295u)) % 32u), 2147483647i, _wgslsmith_div_i32(max(~abs(arg_1.a), 1i), reverseBits(_wgslsmith_div_i32(~(-17829i), ~0i))));
    var_0 = _wgslsmith_sub_i32(1i << (u_input.c % 32u), u_input.a);
    let var_1 = ~u_input.b;
    var_0 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1752f, -419f, -958f, arg_2), vec4<f32>(-1826f, arg_2, -115f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, arg_2, arg_0, -644f) + vec4<f32>(arg_0, arg_2, arg_2, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_2, 2284f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -118f, 994f, arg_0)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(786f, arg_2, arg_0, arg_2), vec4<f32>(-1457f, arg_2, -475f, -997f), vec4<bool>(true, false, true, false)))))), true)));
    return arg_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(max(arg_2.x, -1000f))))) - arg_2.x), Struct_1(_wgslsmith_clamp_i32(u_input.a, ~func_2(vec4<bool>(arg_0.x, arg_1, false, arg_1), vec3<i32>(-6173i, u_input.a, u_input.a), -15577i, Struct_1(11324i)), _wgslsmith_sub_i32(u_input.a, 1i) | u_input.a)), 1242f);
    var var_1 = abs(u_input.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1800f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1515f - arg_2.x), arg_2.x, true)))) * -1074f) + 539f);
    var var_3 = ~vec4<i32>(~func_2(!vec4<bool>(false, arg_1, true, true), vec3<i32>(var_0.a, u_input.a, var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(1i, 2147483647i)), Struct_1(var_0.a)), 2147483647i >> (firstTrailingBit(select(u_input.d.x, 4294967295u, arg_0.x)) % 32u), firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(4883i, u_input.a, -10407i), vec3<i32>(var_0.a, var_0.a, 0i))), -(~(37391i << (1u % 32u))));
    let var_4 = vec3<bool>(!any(vec4<bool>(any(vec4<bool>(false, arg_1, arg_0.x, false)), any(arg_0), arg_1, true)), false, false);
    return min(abs(u_input.e), 70191u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(-2147483647i, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(-49577i, u_input.a), ~u_input.a), _wgslsmith_mod_i32(~(-2646i), u_input.a), ~reverseBits(u_input.a));
    let var_1 = vec3<u32>(u_input.e, u_input.e, func_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1879f + 694f) + -337f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(422f)), _wgslsmith_f_op_f32(floor(108f))), -188f)));
    var var_2 = Struct_1(u_input.a);
    var_2 = func_4(_wgslsmith_f_op_f32(-400f - -489f), Struct_1(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-612f)))) - 1215f));
    var_2 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-859f, -285f, true))), Struct_1(-reverseBits(var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-850f)) * 204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f + 362f)))), 232f);
    var_2 = Struct_1(~max(func_2(vec4<bool>(true, true, true, true), reverseBits(var_0.zww), var_2.a, Struct_1(var_2.a)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, 0i), -15524i & var_0.x)));
    var var_3 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), any(vec2<bool>(true, any(vec4<bool>(false, true, true, false)))));
    let var_4 = var_0;
    let var_5 = max(var_2.a ^ select(var_4.x, var_4.x, true && var_3.x), _wgslsmith_div_i32(~min(_wgslsmith_mult_i32(var_0.x, -13437i), var_4.x ^ var_2.a), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1644f, 803f, 750f, -1198f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -353f, 1293f, 951f), vec4<f32>(-1000f, -540f, 717f, -823f), false))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-777f, _wgslsmith_div_f32(104f, 1000f), -1000f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, 413f, -566f, -935f))))), func_3(vec2<f32>(968f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-953f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(195f, -542f, 959f, 1822f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1260f, 1342f, -287f, -549f)))))), -1i, (i32(-1i) * -18562i) | abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -9286i, var_0.x, var_0.x), var_0)));
}

